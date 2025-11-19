{
  programs.nixvim = {
    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      wrap = false;
      scrolloff = 8;
      cursorline = true;
      termguicolors = true;
      signcolumn = "yes";
    };
  };
}

