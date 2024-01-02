{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      wayland = {
        windowManager = {
          sway = {
            enable = true;
            config = {
              gaps = {
                inner = 10;
              };
              menu = "wofi --show run";
              modifier = "Mod4";
              fonts = {
                names = ["monospace"];
                size = 8.0;
              };
              bars = [{
                command = "waybar";
              }];
              input = {
                "type:touchpad" = {
                    dwt = "enabled";
                    tap = "enabled";
                    natural_scroll = "enabled";
                    middle_emulation = "enabled";
                };
              };
              output = {
                "*" = {
                  bg = "${./../../image/wallpaper.jpg} fill";
                };
              };
              terminal = "foot";
            };
            swaynag = {
              enable = true;
              settings = {
                "<config>" = {
                  edge = "top";
                  font = "Monospace 8";
                };
              };
            };
          };
        };
      };
    };
  };
}
