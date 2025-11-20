{
  config,
  pkgs,
  ...
}:
{
  programs.nixvim = {
    enable = true;
    imports = [
      ./bufferline.nix
      ./keymaps.nix
      ./neo-tree.nix
      ./options.nix
      ./treesitter.nix
      ./ui.nix
    ];
  };
}
