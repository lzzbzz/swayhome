{
  lib,
  pkgs,
  ...
}:
with lib;
with pkgs;
let
  name = "hervyqa";
  modifier = "Mod4";

  # colors
  abyss-blue = "#2980b9";
  alternate-gray = "#bdc3c7";
  beware-orange = "#f67400";
  cadmium-orange = "#ed872d";
  cardboard-gray = "#eff0f1";
  charcoal-gray = "#31363b";
  citrus-yellow = "#fcd116";
  coastal-fog = "#7f8c8d";
  hot-purple = "#af69ef";
  hover-blue = "#93cee9";
  hyper-blue = "#3daee6";
  icon-blue = "#1d99f3";
  icon-gray = "#4d4d4d";
  icon-red = "#da4453";
  icon-yellow = "#fdbc4b";
  lazy-gray = "#afb0b3";
  lightsaber-blue = "#15f2fd";
  noble-fir = "#27ae60";
  paper-white = "#fcfcfc";
  pimpinella= "#e74c3c";
  pinkish-purple = "#d648d7";
  plasma-blue = "#3daee9";
  red-pink = "#fa2a55";
  shade-black = "#232629";
  spring-grass ="#32e17c";
  sunbeam-yellow = "#c9ce3b";

in {
  home-manager = {
    users.${name} = {
      wayland = {
        windowManager = {
          sway = {
            enable = true;
            config = {
              left = "h";
              down = "j";
              up = "k";
              right = "l";
              gaps = {
                inner = 10;
              };
              modifier = "${modifier}";
              window = {
                border = 5; titlebar = false;
              };
              bars = [{
                command = "${waybar}/bin/waybar";
              }];
              floating = {
                modifier = "${modifier}";
                border = 5;
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
              keybindings = mkOptionDefault {
                # menu
                "${modifier}+d" = "exec ${dmenu}/bin/dmenu_path | ${dmenu}/bin/dmenu -fn 'Monospace:size=10' -nf '${paper-white}' -nb '${shade-black}' -sf '${paper-white}' -sb '${plasma-blue}' | ${findutils}/bin/xargs swaymsg exec --";

                # audio control
                "XF86AudioRaiseVolume" = "exec ${swayosd}/bin/swayosd --output-volume 2";
                "XF86AudioLowerVolume" = "exec ${swayosd}/bin/swayosd --output-volume -2";
                "XF86AudioMute" = "exec ${swayosd}/bin/swayosd --output-volume mute-toggle";
                "XF86AudioMicMute" = "exec ${swayosd}/bin/swayosd --input-volume mute-toggle";

                # brightness
                "XF86MonBrightnessUp" = "exec ${swayosd}/bin/swayosd --brightness 2";
                "XF86MonBrightnessDown" = "exec ${swayosd}/bin/swayosd --brightness -2";

                # modes
                "${modifier}+r" = "mode resize";
                "${modifier}+b" = "mode browser";
                "Print" = "mode printscreen";
              };
              colors = {
                background = shade-black;
                focused = {
                  border = plasma-blue;
                  background = plasma-blue;
                  text = paper-white;
                  indicator = plasma-blue;
                  childBorder = plasma-blue;
                };
                focusedInactive = {
                  border = charcoal-gray;
                  background = charcoal-gray;
                  text = paper-white;
                  indicator = charcoal-gray;
                  childBorder = charcoal-gray;
                };
                unfocused = {
                  border = charcoal-gray;
                  background = charcoal-gray;
                  text = paper-white;
                  indicator = charcoal-gray;
                  childBorder = charcoal-gray;
                };
                urgent = {
                  border = beware-orange;
                  background = beware-orange;
                  text = paper-white;
                  indicator = beware-orange;
                  childBorder = beware-orange;
                };
                placeholder = {
                  border = charcoal-gray;
                  background = charcoal-gray;
                  text = paper-white;
                  indicator = charcoal-gray;
                  childBorder = charcoal-gray;
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
                  "${down}" = "resize grow height 5 px or 5 ppt";
                  "${left}" = "resize shrink width 5 px or 5 ppt";
                  "${right}" = "resize grow width 5 px or 5 ppt";
                  "${up}" = "resize shrink height 5 px or 5 ppt";
                };
                browser = {
                  # browser = "browser 1-2 |1:qutebrowser|2:private|";
                  Escape = "mode default";
                  Return = "mode default";
                  "1" = "exec ${qutebrowser}/bin/qutebrowser, mode default";
                  "2" = "exec ${qutebrowser}/bin/qutebrowser --target private-window, mode default";
                };
                printscreen = {
                  # printscreen = "printscreen 1-4 |1:save-area|2:save-all|3:copy-area|4:copy-all|";
                  Escape = "mode default";
                  Return = "mode default";
                  "1" = ''exec ${grim}/bin/grim -g "$(${slurp}/bin/slurp -d)" | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                  "2" = ''exec ${grim}/bin/grim | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                  "3" = ''exec ${grim}/bin/grim -g "$(${slurp}/bin/slurp -d)" - | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                  "4" = ''exec ${grim}/bin/grim - | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                };
              };
            };
          };
        };
      };
    };
  };
}
