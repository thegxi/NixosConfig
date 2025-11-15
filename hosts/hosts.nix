[
  {
    host = "xi-desktop";
    user = "xi";
    extraOSModules = [ ./xi-desktop/os.nix ];
    extraHomeModules = [ ./xi-desktop/home.nix ];
    extraHomeArgs = {
      nixosVersion = "25.05";
      homeManagerVersion = "25.05";
    };
  }
]
