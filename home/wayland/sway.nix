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

  # colors
  bg-color = "#3daee9";
  inactive-bg-color = "#232629";
  text-color = "#fcfcfc";
  inactive-text-color = "#7f8c8d";
  urgent-bg-color = "#3daee9";
  indicator = "#3daee9";
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
              window = {
                border = 3;
                titlebar = false;
              };
              bars = [{
                command = "${waybar}/bin/waybar";
              }];
              floating = {
                modifier = "${mod}";
                border = 3;
                titlebar = false;
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
                  bg = "${./image/wallpaper.jpg} fill";
                };
              };
              startup = [
                { command = "${autotiling}/bin/autotiling"; }
              ];
              keybindings = let
                modifier = config.wayland.windowManager.sway.config.modifier;
              in mkOptionDefault {
                # menu
                "${mod}+d" = "exec ${dmenu}/bin/dmenu_path | ${dmenu}/bin/dmenu -fn 'Monospace:size=10' -nf '${text-color}' -nb '${inactive-bg-color}' -sf '${text-color}' -sb '${bg-color}' | ${findutils}/bin/xargs swaymsg exec --";
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
              colors = {
                background = inactive-bg-color;
                focused = {
                  border = bg-color;
                  background = bg-color;
                  text = text-color;
                  indicator = indicator;
                  childBorder = bg-color;
                };
                focusedInactive = {
                  border = inactive-bg-color;
                  background = inactive-bg-color;
                  text = inactive-text-color;
                  indicator = inactive-bg-color;
                  childBorder = inactive-bg-color;
                };
                unfocused = {
                  border = inactive-bg-color;
                  background = inactive-bg-color;
                  text = inactive-text-color;
                  indicator = inactive-bg-color;
                  childBorder = inactive-bg-color;
                };
                urgent = {
                  border = urgent-bg-color;
                  background = urgent-bg-color;
                  text = text-color;
                  indicator = indicator;
                  childBorder = urgent-bg-color;
                };
                placeholder = {
                  border = urgent-bg-color;
                  background = urgent-bg-color;
                  text = text-color;
                  indicator = indicator;
                  childBorder = urgent-bg-color;
                };
              };
              modes = {
                resize = let
                  left = "h";
                  down = "j";
                  up = "k";
                  right = "l";
                in {
                  Escape = "mode default";
                  Return = "mode default";
                  "${down}" = "resize grow height 10 px or 10 ppt";
                  "${left}" = "resize shrink width 10 px or 10 ppt";
                  "${right}" = "resize grow width 10 px or 10 ppt";
                  "${up}" = "resize shrink height 10 px or 10 ppt";
                };
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
