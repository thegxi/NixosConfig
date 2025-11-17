{ inputs, pkgs, ... }:
{
  imports = [
    #./niri
    ./fuzzel.nix
  ];
  home.packages = with pkgs; [
    swww
    swaybg
    xwayland-satellite
    wmname
  ];
}
