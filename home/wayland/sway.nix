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

  left = "h";
  down = "j";
  up = "k";
  right = "l";

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
              modifier = "${modifier}";
              defaultWorkspace = "workspace number 1";
              bars = [{
                command = "${waybar}/bin/waybar";
              }];
              focus = {
                forceWrapping = false;
                followMouse = false;
              };
              fonts = {
                names = ["monospace"];
                size = 8.0;
              };
              gaps = {
                inner = 10;
              };
              startup = [
                { command = "${autotiling}/bin/autotiling"; }
              ];
              output = {
                "*" = {
                  bg = "${./image/wallpaper.jpg} fill";
                };
              };
              input = {
                "type:touchpad" = {
                  dwt = "enabled";
                  tap = "enabled";
                  natural_scroll = "enabled";
                  middle_emulation = "enabled";
                };
              };
              workspaceOutputAssign = let
                first = "eDP-1";
                second = "DP-1 DP-2 DP-3 DP-4 HDMI-A-1 HDMI-A-2";
              in [
                { output = first; workspace = "1"; }
                { output = first; workspace = "2"; }
                { output = first; workspace = "3"; }
                { output = first; workspace = "4"; }
                { output = first; workspace = "5"; }
                { output = second; workspace = "6"; }
                { output = second; workspace = "7"; }
                { output = second; workspace = "8"; }
                { output = second; workspace = "9"; }
              ];
              window = {
                border = 3;
                titlebar = false;
                commands = [
                  {
                    command = "floating enable, sticky enable";
                    criteria.title = "Picture-in-Picture";
                  }
                  {
                    command = "floating enable, sticky enable";
                    criteria.title = ".*Sharing Indicator.*";
                  }
                ];
              };
              floating = {
                modifier = "${modifier}";
                border = 3;
                titlebar = false;
                criteria = [
                  {
                    app_id = ".blueman-manager-wrapped";
                  }
                  {
                    app_id = "at.yrlf.wl_mirror";
                  }
                  {
                    app_id = "imv";
                  }
                  {
                    app_id = "mpv";
                  }
                  {
                    app_id = "org.keepassxc.KeePassXC";
                  }
                  {
                    app_id = "org.pwmt.zathura";
                  }
                  {
                    app_id = "qt5ct";
                  }
                  {
                    app_id = "wdisplays";
                  }
                ];
              };
              keybindings = mkOptionDefault {
                # rofi: menu
                "${modifier}+d" = "exec ${rofi}/bin/rofi -show drun";
                # rofi: clipboard manager
                "${modifier}+c" = "exec ${cliphist}/bin/cliphist list | ${rofi}/bin/rofi -dmenu | ${cliphist}/bin/cliphist decode | ${wl-clipboard}/bin/wl-copy ";
                # rofi: bluetooth
                "${modifier}+y" = "exec ${rofi-bluetooth}/bin/rofi-bluetooth";
                # rofi: password store
                "${modifier}+e" = "exec ${rofi-pass-wayland}/bin/rofi-pass";
                # pick color
                "${modifier}+n" = "exec ${wl-color-picker}/bin/wl-color-picker clipboard";

                # modes
                "${modifier}+g" = "mode recording";
                "${modifier}+p" = "mode printscreen";
                "${modifier}+q" = "mode browser";
                "${modifier}+r" = "mode resize";
                "${modifier}+u" = "mode audio";
                "${modifier}+x" = "mode session";

                "${modifier}+bracketleft" = "workspace prev";
                "${modifier}+bracketright" = "workspace next";

                "${modifier}+1" = "workspace number 1";
                "${modifier}+2" = "workspace number 2";
                "${modifier}+3" = "workspace number 3";
                "${modifier}+4" = "workspace number 4";
                "${modifier}+5" = "workspace number 5";
                "${modifier}+6" = "workspace number 6";
                "${modifier}+7" = "workspace number 7";
                "${modifier}+8" = "workspace number 8";
                "${modifier}+9" = "workspace number 9";

                "${modifier}+Shift+bracketleft" = "move container to workspace prev; workspace prev";
                "${modifier}+Shift+bracketright" = "move container to workspace next; workspace next";

                "${modifier}+Shift+1" = "move container to workspace number 1";
                "${modifier}+Shift+2" = "move container to workspace number 2";
                "${modifier}+Shift+3" = "move container to workspace number 3";
                "${modifier}+Shift+4" = "move container to workspace number 4";
                "${modifier}+Shift+5" = "move container to workspace number 5";
                "${modifier}+Shift+6" = "move container to workspace number 6";
                "${modifier}+Shift+7" = "move container to workspace number 7";
                "${modifier}+Shift+8" = "move container to workspace number 8";
                "${modifier}+Shift+9" = "move container to workspace number 9";

                "${modifier}+${left}" = "focus left";
                "${modifier}+${down}" = "focus down";
                "${modifier}+${up}" = "focus up";
                "${modifier}+${right}" = "focus right";

                "${modifier}+Ctrl+${left}" = "move workspace to output left";
                "${modifier}+Ctrl+${down}" = "move workspace to output down";
                "${modifier}+Ctrl+${up}" = "move workspace to output up";
                "${modifier}+Ctrl+${right}" = "move workspace to output right";

                "${modifier}+Shift+${left}" = "move left";
                "${modifier}+Shift+${down}" = "move down";
                "${modifier}+Shift+${up}" = "move up";
                "${modifier}+Shift+${right}" = "move right";

                # audio control
                "XF86AudioRaiseVolume" = "exec ${pamixer}/bin/pamixer --increase 2";
                "XF86AudioLowerVolume" = "exec ${pamixer}/bin/pamixer --decrease 2";
                "XF86AudioMute" = "exec ${pamixer}/bin/pamixer --toggle-mute";

                # mic control
                "${modifier}+XF86AudioRaiseVolume" = "exec ${pamixer}/bin/pamixer --default-source --increase 2";
                "${modifier}+XF86AudioLowerVolume" = "exec ${pamixer}/bin/pamixer --default-source --decrease 2";
                "XF86AudioMicMute" = "exec ${pamixer}/bin/pamixer --default-source -t";

                # brightness
                "XF86MonBrightnessUp" = "exec ${light}/bin/light -A 2";
                "XF86MonBrightnessDown" = "exec ${light}/bin/light -U 2";
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
                audio = {
                  # audio = "launch: [i]input [o]output";
                  Escape = "mode default";
                  Return = "mode default";
                  "i" = "exec ${rofi-pulse-select}/bin/rofi-pulse-select source, mode default";
                  "o" = "exec ${rofi-pulse-select}/bin/rofi-pulse-select sink, mode default";
                };
                browser = {
                  # browser = "launch: [1]qutebrowser [2]private";
                  Escape = "mode default";
                  Return = "mode default";
                  "1" = "exec ${qutebrowser}/bin/qutebrowser, mode default";
                  "2" = "exec ${qutebrowser}/bin/qutebrowser --target private-window, mode default";
                };
                printscreen = {
                  # printscreen = "launch: [1]save-area [2]save-all [3]copy-area [4]copy-all";
                  Escape = "mode default";
                  Return = "mode default";
                  "1" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${grim}/bin/grim -g "$(${slurp}/bin/slurp -d)" "$(xdg-user-dir PICTURES)/$(date +%Y%m%d_%Hh%Mm%Ss_@${name}.png)" | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                  "2" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${grim}/bin/grim "$(xdg-user-dir PICTURES)/$(date +%Y%m%d_%Hh%Mm%Ss_@${name}.png)" | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                  "3" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${grim}/bin/grim -g "$(${slurp}/bin/slurp -d)" - | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                  "4" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${grim}/bin/grim - | ${wl-clipboard}/bin/wl-copy -t image/png, mode default'';
                };
                recording = {
                  # printscreen = "launch:
                  # [1]area-with-audio [2]full-with-audio;
                  # [3]area-without-audio [4]full-without-audio;
                  # [0]stop-record";
                  Escape = "mode default";
                  Return = "mode default";
                  "1" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${wl-screenrec}/bin/wl-screenrec --low-power=off --filename="$(xdg-user-dir VIDEOS)/$(date +%Y%m%d_%Hh%Mm%Ss_@${name}.mp4)" --geometry "$(${slurp}/bin/slurp -d)" --audio, mode default'';
                  "2" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${wl-screenrec}/bin/wl-screenrec --low-power=off --filename="$(xdg-user-dir VIDEOS)/$(date +%Y%m%d_%Hh%Mm%Ss_@${name}.mp4)" --audio, mode default'';
                  "3" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${wl-screenrec}/bin/wl-screenrec --low-power=off --filename="$(xdg-user-dir VIDEOS)/$(date +%Y%m%d_%Hh%Mm%Ss_@${name}.mp4)" --geometry "$(${slurp}/bin/slurp -d)", mode default'';
                  "4" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${wl-screenrec}/bin/wl-screenrec --low-power=off --filename="$(xdg-user-dir VIDEOS)/$(date +%Y%m%d_%Hh%Mm%Ss_@${name}.mp4)", mode default'';
                  "0" = ''exec ${coreutils-full}/bin/sleep 0.5; exec ${procps}/bin/pkill --signal INT wl-screenrec, mode default'';
                };
                resize = {
                  Escape = "mode default";
                  Return = "mode default";
                  "${down}" = "resize grow height 5 px or 5 ppt";
                  "${left}" = "resize shrink width 5 px or 5 ppt";
                  "${right}" = "resize grow width 5 px or 5 ppt";
                  "${up}" = "resize shrink height 5 px or 5 ppt";
                };
                session = {
                  # session = launch:
                  # [h]ibernate [p]oweroff [r]eboot
                  # [s]uspend [l]ockscreen log[o]ut
                  Escape = "mode default";
                  Return = "mode default";
                  "h" = "exec systemctl hibernate, mode default";
                  "p" = "exec systemctl poweroff, mode default";
                  "r" = "exec systemctl reboot, mode default";
                  "s" = "exec systemctl suspend, mode default";
                  "l" = "exec swaylock, mode default";
                  "o" = "exec swaymsg exit, mode default";
                };
              };
            };
          };
        };
      };
    };
  };
}
