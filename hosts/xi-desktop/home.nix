{
  monitors = {
    "HDMI-A-1" = {
      scale = 1.6;
      mode = {
        width = 1920;
        height = 1080;
        refresh = 60.0;
      };
      position = {
        x = 0;
        y = 60;
      };
      rotation = 0;
    };
    "eDP-1" = {
      isMain = true;
      scale = 1.6;
      mode = {
        width = 2240;
        height = 1400;
        refresh = 60.0;
      };
      position = {
        x = 1000;
        y = 0;
      };
      rotation = 0;
      focus-at-startup = true;
    };
  };
  home.stateVersion = "25.05";
}
