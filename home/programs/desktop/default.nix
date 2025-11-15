{ inputs, pkgs, ... }:
{
  imports = [
    ./niri
  ];
  home.packages = with pkgs; [
    swww
    swaybg
    xwayland-satellite
    wmname
  ];
}
