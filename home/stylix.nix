{
  pkgs,
  config,
  user,
  ...
}:
let
  inherit (config.lib.colorScheme) recolorScript;
in
{
  stylix = {
    autoEnable = false;
    base16Scheme = {
      base00 = "282936";
      base01 = "3a3c4e";
      base02 = "4d4f68";
      base03 = "626483";
      base04 = "62d6e8";
      base05 = "e9e9f4";
      base06 = "f1f2f8";
      base07 = "f7f7fb";
      base08 = "ea51b2";
      base09 = "b45bcf";
      base0A = "00f769";
      base0B = "ebff87";
      base0C = "a1efe4";
      base0D = "62d6e8";
      base0E = "b45bcf";
      base0F = "00f769";
    };
    image = "/home/${user}/Pictures/wallpapers/zaney-wallpaper.jpg";

    targets.qt.enable = true;
    targets.gtk.enable = true;
    targets.gtk.flatpakSupport.enable = true;
    polarity = "dark";
    cursor = {
      package = pkgs.graphite-cursors;
      name = "graphite-dark";
      size = 32;
    };
    fonts = {
      monospace.name = "Maple Mono";
      monospace.package = pkgs.maple-mono-variable;
      sansSerif.name = "LXGW WenKai";
      sansSerif.package = pkgs.lxgw-wenkai;
      serif.name = "LXGW WenKai";
      serif.package = pkgs.lxgw-wenkai;
      emoji.name = "Noto Color Emoji";
      emoji.package = pkgs.noto-fonts-color-emoji;
    };
    iconTheme = {
      enable = true;
      package = pkgs.zafiro-icons.overrideAttrs (oldAttrs: {
        postInstall = recolorScript + (oldAttrs.postInstall or "");
      });
      dark = "Zafiro-icons-Dark";
      light = "Zafiro-icons-Light";
    };
  };
}
