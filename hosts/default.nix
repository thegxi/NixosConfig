{
  inputs,
  nixpkgs,
  self,
  ...
}:
let
  sharedOSModules = [
    ../os
    ../nix
    inputs.niri.nixosModules.niri
    inputs.stylix.nixosModules.stylix
  ];

  sharedHomeModules = [
    ../home
    #inputs.stylix.homeModules.stylix
    inputs.nixvim.homeModules.nixvim
    inputs.caelestia-shell.homeManagerModules.default
  ]
  ++ (builtins.attrValues self.homeManagerModules);

  mkHost =
    {
      host,
      user,
      extraOSModules ? [ ],
      extraOSArgs ? { },
      extraHomeModules ? [ ],
      extraHomeArgs ? { },
      ...
    }:
    {
      nixosConfigurations.${host} = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit
            inputs
            nixpkgs
            self
            host
            user
            ;
        }
        // extraOSArgs;
        modules = sharedOSModules ++ extraOSModules ++ [
	  inputs.home-manager.nixosModules.home-manager
	  {
	    home-manager.extraSpecialArgs = {
	      inherit inputs self host user;
	    } // extraHomeArgs;
	    home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;
	    home-manager.users.${user} = {
	      imports = 
	        sharedHomeModules
		++ extraHomeModules;
	    };
	  }
	];
      };
    };

in
{
  flake = import ./hosts.nix |> map mkHost |> builtins.foldl' (x: y: x // y) { };
}
