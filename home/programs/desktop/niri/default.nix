{
  pkgs,
  ...
}:
{
  imports = [
    ./waybar.nix
  ];
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };
}
