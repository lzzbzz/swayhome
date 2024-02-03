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

  # navigation
  left = "h";
  down = "j";
  up = "k";
  right = "l";

  # colors
  foreground = "#C6D0F5"; # text
  background = "#303446"; # base
  regular0 = "#51576D";   # surface 1
  regular1 = "#E78284";   # red
  bright7 = "#A5ADCE";    # subtext 0

in {
  home-manager = {
    users.${name} = {
      wayland = {
        windowManager = {
          sway = {
            enable = true;
            config = {
              modifier = "${modifier}";
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
                inner = 15;
              };
              startup = [
                { command = "${autotiling}/bin/autotiling"; }
                { command = "${wpaperd}/bin/wpaperd"; }
              ];
              input = {
                "type:touchpad" = {
                  dwt = "enabled";
                  tap = "enabled";
                  natural_scroll = "enabled";
                  middle_emulation = "enabled";
                };
              };
              workspaceOutputAssign = let
                first = "eDP-1 VGA-1";
                second = "DP-1 DP-2 DP-3 DP-4 HDMI-A-1 HDMI-A-2";
              in [
                { output = first; workspace = "1"; }
                { output = first; workspace = "2"; }
                { output = first; workspace = "3"; }
                { output = second; workspace = "4"; }
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
                  { app_id = "at.yrlf.wl_mirror"; }
                  { app_id = "imv"; }
                  { app_id = "mpv"; }
                  { app_id = "org.pwmt.zathura"; }
                  { app_id = "qt5ct"; }
                  { app_id = "qt6ct"; }
                  { app_id = "wdisplays"; }
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
                # mirror screen
                "${modifier}+o" = "exec ${wl-mirror}/bin/wl-present mirror";

                # modes
                "${modifier}+g" = "mode recording";
                "${modifier}+p" = "mode printscreen";
                "${modifier}+q" = "mode browser";
                "${modifier}+r" = "mode resize";
                "${modifier}+u" = "mode audio";
                "${modifier}+x" = "mode session";

                "${modifier}+period" = "workspace next";
                "${modifier}+comma" = "workspace prev";

                "${modifier}+1" = "workspace number 1";
                "${modifier}+2" = "workspace number 2";
                "${modifier}+3" = "workspace number 3";
                "${modifier}+4" = "workspace number 4";

                "${modifier}+Shift+period" = "move container to workspace next; workspace next";
                "${modifier}+Shift+comma" = "move container to workspace prev; workspace prev";

                "${modifier}+Shift+1" = "move container to workspace number 1";
                "${modifier}+Shift+2" = "move container to workspace number 2";
                "${modifier}+Shift+3" = "move container to workspace number 3";
                "${modifier}+Shift+4" = "move container to workspace number 4";

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
                background = background;
                focused = {
                  border = bright7;
                  background = bright7;
                  text = foreground;
                  indicator = bright7;
                  childBorder = bright7;
                };
                focusedInactive = {
                  border = regular0;
                  background = regular0;
                  text = foreground;
                  indicator = regular0;
                  childBorder = regular0;
                };
                unfocused = {
                  border = regular0;
                  background = regular0;
                  text = foreground;
                  indicator = regular0;
                  childBorder = regular0;
                };
                urgent = {
                  border = regular1;
                  background = regular1;
                  text = foreground;
                  indicator = regular1;
                  childBorder = regular1;
                };
                placeholder = {
                  border = regular0;
                  background = regular0;
                  text = foreground;
                  indicator = regular0;
                  childBorder = regular0;
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
