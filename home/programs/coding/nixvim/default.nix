{
  config,
  pkgs,
  ...
}:
{
  programs.nixvim = {
    enable = true;
    plugins.web-devicons.enable = true;
    imports = [
      ./bufferline.nix
      ./cmp.nix
      ./keymaps.nix
      ./neo-tree.nix
      ./options.nix
      ./lsp.nix
      ./treesitter.nix
      ./ui.nix
    ];
  };
}
