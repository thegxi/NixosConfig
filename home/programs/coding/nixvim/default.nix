{ config, pkgs, lib, ... }:

{
  imports = [
    ./options.nix
  ];
  programs.nixvim = {
    enable = true;
  };
}

