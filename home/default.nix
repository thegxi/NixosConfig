{
  pkgs,
  user,
  ...
}:
{
  imports = [
    ./fastfetch
    ./programs
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";

    packages = with pkgs;[
      neofetch
      nnn # terminal file manager

      # archives
      zip
      xz
      unzip
      p7zip

      # utils
      ripgrep # recursively searches directories for a regex pattern
      jq # A lightweight and flexible command-line JSON processor
      eza # A modern replacement for ‘ls’
      fzf # A command-line fuzzy finder
      fd

      # misc
      cowsay
      file
      which
      tree

      btop  # replacement of htop/nmon

      lsof # list open files
    ];
  };

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      addons = with pkgs; [
        fcitx5-gtk
        libsForQt5.fcitx5-qt
        qt6Packages.fcitx5-chinese-addons
        fcitx5-rime
      ];
      waylandFrontend = true;
    };
  };

  programs = {
    git = {
      enable = true;
      userName = "xi";
      userEmail = "village.cowherd@gmail.com";
    };
    home-manager.enable = true;
  };
  fonts.fontconfig.enable = false;
}
