{
  config,
  lib,
  option,
  pkgs,
  ...
}:
with lib;
with pkgs;
let
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
                { command = "${autotiling}/bin/autotiling"; }
              ];
              keybindings = let
                modifier = config.wayland.windowManager.sway.config.modifier;
              in mkOptionDefault {
                # audio control
                "XF86AudioRaiseVolume" = "exec ${swayosd}/bin/swayosd --output-volume 2";
                "XF86AudioLowerVolume" = "exec ${swayosd}/bin/swayosd --output-volume -2";
                "XF86AudioMute" = "exec ${swayosd}/bin/swayosd --output-volume mute-toggle";
                "XF86AudioMicMute" = "exec ${swayosd}/bin/swayosd --input-volume mute-toggle";
                # brightness
                "XF86MonBrightnessUp" = "exec ${swayosd}/bin/swayosd --brightness 2";
                "XF86MonBrightnessDown" = "exec ${swayosd}/bin/swayosd --brightness -2";
                # print+copy
                "Print" = ''exec ${grim}/bin/grim -g "$(${slurp}/bin/slurp -d)" - | ${wl-clipboard}/bin/wl-copy -t image/png'';
                "Print+Shift" = ''exec ${grim}/bin/grim - | ${wl-clipboard}/bin/wl-copy -t image/png'';
                # print+save
                "Print+${mod}" = ''exec ${grim}/bin/grim -g "$(${slurp}/bin/slurp -d)" | ${wl-clipboard}/bin/wl-copy -t image/png'';
                "Print+Shift+${mod}" = ''exec ${grim}/bin/grim | ${wl-clipboard}/bin/wl-copy -t image/png'';
              };
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
