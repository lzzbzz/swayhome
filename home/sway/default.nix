{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
  mod = "Mod4";
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
              menu = "${pkgs.dmenu}/bin/dmenu}";
              terminal = "${pkgs.foot}/bin/foot}";
              modifier = "${mod}";
              window.border = 0;
              bars = [{
                command = "waybar";
              }];
              floating = {
                modifier = "${mod}";
                border = 0;
              };
              focus = {
                forceWrapping = false;
                followMouse = false;
              };
              fonts = {
                names = ["monospace"];
                size = 8.0;
              };
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
              startup = [
                { command = "autotiling"; always = true; }
              ];
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
