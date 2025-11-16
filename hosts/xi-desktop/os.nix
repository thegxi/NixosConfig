{ host, ... }:
{
  imports = [ 
    ./hardware-configuration.nix 
    ./nvidia-driver.nix
  ];
  system.stateVersion = "25.05";
  networking.hostName = host;
}
