{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        cava = {
          enable = true;
          settings = {
            general = {
              framerate = 60;
              bars = 0;
              bar_width = 1;
              bar_spacing = 1;
            };
            smoothing = {
              noise_reduction = 88;
            };
            color = {
              foreground = "'#3daee9'";
            };
          };
        };
      };
    };
  };
}
