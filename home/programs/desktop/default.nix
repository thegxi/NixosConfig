{ inputs, pkgs, ... }:
{
  imports = [
    ./niri
    ./fuzzel.nix
    ./caelestia.nix
  ];
  home.packages = with pkgs; [
    swww
    swaybg
    xwayland-satellite
    wmname
    inputs.quickshell.packages.${pkgs.system}.default
  ];
}
