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
        waybar = {
          enable = true;
          settings = {
            mainBar = {
              layer = "bottom";
              position = "top";
              height = 15;
              spacing = 0;
              output = [
                "eDP-1"
                "HDMI-A-1"
              ];
              modules-left = [
                "sway/workspaces"
                "sway/mode"
                "sway/scratchpad"
                "custom/media"
              ];
              modules-center = [
                "sway/window"
              ];
              modules-right = [
                "mpd"
                "idle_inhibitor"
                "pulseaudio"
                "network"
                "cpu"
                "memory"
                "temperature"
                "backlight"
                "battery"
                "battery#bat2"
                "clock"
                "tray"
              ];
              "keyboard-state" = {
                numlock = true;
                capslock = true;
                format = "{name} {icon}";
                format-icons = {
                  locked = "";
                  unlocked = "";
                };
              };
              "sway/mode" = {
                format = "<span style=\"italic\">{}</span>";
              };
              "sway/scratchpad" = {
                format = "{icon} {count}";
                show-empty = false;
                format-icons = [
                  ""
                  ""
                ];
                tooltip = true;
                tooltip-format = "{app}: {title}";
              };
              "mpd" = {
                format = "{stateIcon} {randomIcon}({elapsedTime:%M:%S}/{totalTime:%M:%S})";
                format-disconnected = "Disconnected ";
                format-stopped = "{randomIcon}Stopped ";
                unknown-tag = "N/A";
                interval = 2;
                consume-icons = {
                  "on" = " ";
                };
                random-icons = {
                  off = "<span color=\"#f53c3c\"></span> ";
                  on = " ";
                };
                repeat-icons = {
                  on = " ";
                };
                single-icons = {
                  on = "1 ";
                };
                state-icons = {
                  paused = "";
                  playing = "";
                };
                tooltip-format = "MPD (connected)";
                tooltip-format-disconnected = "MPD (disconnected)";
              };
              "idle_inhibitor" = {
                format = "{icon}";
                format-icons = {
                  activated = "";
                  deactivated = "";
                };
              };
              "tray" = {
                # icon-size = 21;
                spacing = 5;
              };
              "clock" = {
                timezone = "Asia/Jakarta";
                tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
                format-alt = "{:%Y-%m-%d}";
              };
              "cpu" = {
                format = "{usage}% ";
                tooltip =false;
              };
              "memory" = {
                format = "{}% ";
              };
              "temperature" = {
                # thermal-zone" = 2;
                # hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
                critical-threshold = 80;
                # format-critical = "{temperatureC}°C {icon}";
                format = "{temperatureC}°C {icon}";
                format-icons = [
                  ""
                  ""
                  ""
                ];
              };
              "backlight" = {
                # device = "acpi_video1";
                format = "{percent}% {icon}";
                format-icons = [
                  "" "" "" "" "" "" "" "" ""
                ];
              };
              "battery" = {
                states = {
                  good = 95;
                  warning = 30;
                  critical = 15;
                };
                format = "{capacity}% {icon}";
                format-charging = "{capacity}% ";
                format-plugged = "{capacity}% ";
                format-alt = "{time} {icon}";
                # "format-good": ""; # An empty format will hide the module
                # "format-full": "";
                format-icons = [
                  ""
                  ""
                  ""
                  ""
                  ""
                ];
              };
              "battery#bat2" = {
                bat = "BAT2";
              };
              "network" = {
                # "interface" = "wlp2*"; # (Optional) To force the use of this interface
                format-wifi = "{essid} ({signalStrength}%) ";
                format-ethernet = "{ipaddr}/{cidr} ";
                tooltip-format = "{ifname} via {gwaddr} ";
                format-linked = "{ifname} (No IP) ";
                format-disconnected = "Disconnected ⚠";
                format-alt = "{ifname} = {ipaddr}/{cidr}";
              };
              "pulseaudio" = {
                # "scroll-step" = 1; # %; can be a float
                format = "{volume}% {icon} {format_source}";
                format-bluetooth = "{volume}% {icon} {format_source}";
                format-bluetooth-muted = " {icon} {format_source}";
                format-muted = " {format_source}";
                format-source = "{volume}% ";
                format-source-muted = "";
                format-icons = {
                  headphone = "";
                  hands-free = "";
                  headset = "";
                  phone = "";
                  portable = "";
                  car = "";
                  default = [
                    "" "" ""
                  ];
                };
                "on-click" = "pavucontrol";
              };
              "custom/media" = {
                format = "{icon} {}";
                return-type = "json";
                max-length = 40;
                format-icons = {
                  spotify = "";
                  default = "🎜";
                };
                escape = true;
                exec = "$HOME/.config/waybar/mediaplayer.py 2> /dev/null"; # Script in resources folder
                # exec = "$HOME/.config/waybar/mediaplayer.py --player spotify 2> /dev/null"; # Filter player based on name
              };
            };
          };
          style = ''
            * {
              font-family: FontAwesome, Monospace;
              font-size: 12px;
            }

            window#waybar {
              background-color: rgba(43, 48, 59, 0.5);
              border-bottom: 3px solid rgba(100, 114, 125, 0.5);
              color: #ffffff;
              transition-property: background-color;
              transition-duration: .5s;
            }

            window#waybar.hidden {
              opacity: 0.2;
            }

            /*
            window#waybar.empty {
              background-color: transparent;
            }
            window#waybar.solo {
              background-color: #FFFFFF;
            }
            */

            window#waybar.termite {
              background-color: #3F3F3F;
            }

            window#waybar.chromium {
              background-color: #000000;
              border: none;
            }

            button {
              box-shadow: inset 0 -3px transparent;
              border: none;
              border-radius: 0;
            }

            button:hover {
              background: inherit;
              box-shadow: inset 0 -3px #ffffff;
            }

            #workspaces button {
              padding: 0 5px;
              background-color: transparent;
              color: #ffffff;
            }

            #workspaces button:hover {
              background: rgba(0, 0, 0, 0.2);
            }

            #workspaces button.focused {
              background-color: #64727D;
              box-shadow: inset 0 -3px #ffffff;
            }

            #workspaces button.urgent {
              background-color: #eb4d4b;
            }

            #mode {
              background-color: #64727D;
              border-bottom: 3px solid #ffffff;
            }

            #clock,
            #battery,
            #cpu,
            #memory,
            #disk,
            #temperature,
            #backlight,
            #network,
            #pulseaudio,
            #wireplumber,
            #custom-media,
            #tray,
            #mode,
            #idle_inhibitor,
            #scratchpad,
            #mpd {
              padding: 0 10px;
              color: #ffffff;
            }

            #window,
            #workspaces {
              margin: 0 4px;
            }

            .modules-left > widget:first-child > #workspaces {
              margin-left: 0;
            }

            .modules-right > widget:last-child > #workspaces {
              margin-right: 0;
            }

            #clock {
              background-color: #64727D;
            }

            #battery {
              background-color: #26a69a;
            }

            #battery.charging, #battery.plugged {
              color: #ffffff;
              background-color: #26A65B;
            }

            @keyframes blink {
              to {
                background-color: #ffffff;
              }
            }

            #battery.critical:not(.charging) {
              background-color: #f53c3c;
              color: #ffffff;
              animation-name: blink;
              animation-duration: 0.5s;
              animation-timing-function: linear;
              animation-iteration-count: infinite;
              animation-direction: alternate;
            }

            label:focus {
              background-color: #000000;
            }

            #cpu {
              background-color: #2ecc71;
            }

            #memory {
              background-color: #9b59b6;
            }

            #disk {
              background-color: #964B00;
            }

            #backlight {
              background-color: #90b1b1;
            }

            #network {
              background-color: #2980b9;
            }

            #network.disconnected {
              background-color: #f53c3c;
            }

            #pulseaudio {
              background-color: #f9a825;
            }

            #pulseaudio.muted {
              background-color: #90b1b1;
              color: #2a5c45;
            }

            #wireplumber {
              background-color: #fff0f5;
            }

            #wireplumber.muted {
              background-color: #f53c3c;
            }

            #custom-media {
              background-color: #66cc99;
              color: #2a5c45;
              min-width: 100px;
            }

            #custom-media.custom-spotify {
              background-color: #66cc99;
            }

            #custom-media.custom-vlc {
              background-color: #ffa000;
            }

            #temperature {
              background-color: #f0932b;
            }

            #temperature.critical {
              background-color: #eb4d4b;
            }

            #tray {
              background-color: #2980b9;
            }

            #tray > .passive {
              -gtk-icon-effect: dim;
            }

            #tray > .needs-attention {
              -gtk-icon-effect: highlight;
              background-color: #eb4d4b;
            }

            #idle_inhibitor {
              background-color: #2d3436;
            }

            #idle_inhibitor.activated {
              background-color: #ecf0f1;
              color: #2d3436;
            }

            #mpd {
              background-color: #66cc99;
              color: #2a5c45;
            }

            #mpd.disconnected {
              background-color: #f53c3c;
            }

            #mpd.stopped {
              background-color: #90b1b1;
            }

            #mpd.paused {
              background-color: #51a37a;
            }

            #language {
              background: #00b093;
              color: #740864;
              padding: 0 5px;
              margin: 0 5px;
              min-width: 16px;
            }

            #keyboard-state {
              background: #97e1ad;
              color: #000000;
              padding: 0 0px;
              margin: 0 5px;
              min-width: 16px;
            }

            #keyboard-state > label {
              padding: 0 5px;
            }

            #keyboard-state > label.locked {
              background: rgba(0, 0, 0, 0.2);
            }

            #scratchpad {
              background: rgba(0, 0, 0, 0.2);
            }

            #scratchpad.empty {
              background-color: transparent;
            }
          '';
        };
      };
    };
  };
}
