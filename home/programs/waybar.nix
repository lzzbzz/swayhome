{ ... }: let
  name = "hervyqa";

  # custom colors
  foreground = "#C6D0F5";    # text
  background = "#303446";    # base
  regular0   = "#DFDFDF";    # papirus
  regular1   = "#E78284";    # red
  regular2   = "#A6D189";    # green
  regular3   = "#EF9F76";    # orange
  regular4   = "#8CAAEE";    # blue
  regular5   = "#EA999C";    # maroon
  regular6   = "#81C8BE";    # teal
  regular7   = "#CA9EE6";    # mauve

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
              height = 23;
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
                "bluetooth"
                "network"
                "pulseaudio"
                "backlight"
                "battery"
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
              "sway/workspaces" = {
                on-click = "activate";
                sort-by-number = true;
                format = "{icon}";
                format-icons = {
                  "1" = "I";
                  "2" = "II";
                  "3" = "III";
                  "4" = "IV";
                  "5" = "V";
                  "6" = "VI";
                  "7" = "VII";
                  "8" = "VIII";
                  "9" = "IX";
                };
                persistent-workspaces = let
                  first = [
                    "eDP-1"
                    "VGA-1"
                  ];
                  second = [
                    "DP-1" "DP-2" "DP-3" "DP-4"
                    "HDMI-A-1" "HDMI-A-2"
                  ];
                in {
                  "1" = first;
                  "2" = first;
                  "3" = first;
                  "4" = first;
                  "5" = first;
                  "6" = second;
                  "7" = second;
                  "8" = second;
                  "9" = second;
                };
              };
              "sway/scratchpad" = {
                format = "{icon} {count}";
                show-empty = false;
                format-icons = [
                  ""
                  ""
                ];
                tooltip = true;
                tooltip-format = "{app}: {title}";
              };
              "sway/window" = {
                max-length = 40;
              };
              "bluetooth" = {
                format = "{status} ";
                format-disabled = "";
                format-connected = "{num_connections} connected ";
                tooltip-format = "{controller_alias}\t{controller_address}";
                tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{device_enumerate}";
                tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
              };
              "mpd" = {
                format = "{stateIcon} ({elapsedTime:%M:%S}/{totalTime:%M:%S})";
                format-disconnected = "Disconnected ";
                format-stopped = "{randomIcon}Stopped ";
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
                  on = "";
                };
                single-icons = {
                  on = " ";
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
                icon-size = 13;
                spacing = 8;
              };
              "clock" = {
                timezone = "Asia/Jakarta";
                tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
                format = "{:%H:%M }";
                format-alt = "{:%Y-%m-%d }";
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
                  ""
                  ""
                  ""
                  ""
                ];
              };
              "backlight" = {
                # device = "acpi_video1";
                format = "{percent}% {icon}";
                format-icons = [
                  "" "" "" "" "" "" "" "" ""
                ];
              };
              "battery" = {
                states = {
                  good = 95;
                  warning = 30;
                  critical = 15;
                };
                interval = 2;
                format = "{capacity}% {icon}";
                format-charging = "{capacity}% ";
                format-plugged = "{capacity}% ";
                format-alt = "{time} {icon}";
                # "format-good": ""; # An empty format will hide the module
                # "format-full": "";
                format-icons = [
                  ""
                  ""
                  ""
                  ""
                  ""
                ];
              };
              "network" = {
                # "interface" = "wlp2*"; # (Optional) To force the use of this interface
                format-wifi = "{signalStrength}% ";
                format-ethernet = "{ipaddr}/{cidr} ";
                tooltip-format = "{ifname} via {gwaddr} ";
                format-linked = "{ifname} (No IP) ";
                format-disconnected = "Disconnected ";
                format-alt = "{ifname} = {ipaddr}/{cidr} ";
              };
              "pulseaudio" = {
                # "scroll-step" = 1; # %; can be a float
                format = "{volume}% {icon} {format_source}";
                format-bluetooth = "{volume}% {icon} {format_source}";
                format-bluetooth-muted = " {icon} {format_source}";
                format-muted = " {format_source}";
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
                  default = "";
                };
                escape = true;
                exec = "$HOME/.config/waybar/mediaplayer.py 2> /dev/null"; # Script in resources folder
              };
            };
          };
          style = ''
            * {
              font-family: FontAwesome, Monospace;
              font-size: 12px;
            }

            window#waybar {
              background-color: ${background};
              border-bottom: 3px solid ${regular4};
              color: ${foreground};
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
              background-color: ${regular4};
            }
            */

            window#waybar.termite {
              background-color: ${regular4};
            }

            window#waybar.chromium {
              background-color: ${regular4};
              border: none;
            }

            button {
              box-shadow: inset 0 -3px transparent;
              border: none;
              border-radius: 0;
            }

            button:hover {
              background: inherit;
              box-shadow: inset 0 -3px ${foreground};
            }

            #workspaces button {
              padding: 0 5px;
              background-color: transparent;
            }

            #workspaces button:hover {
              background: rgba(0, 0, 0, 0.2);
            }

            #workspaces button.focused {
              background-color: ${regular4};
              box-shadow: inset 0 -3px ${foreground};
            }

            #workspaces button.urgent {
              background-color: ${regular1};
            }

            #mode {
              color: ${regular0};
              background-color: ${regular4};
              border-bottom: 3px solid ${foreground};
            }

            #clock,
            #battery,
            #bluetooth,
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
              color: ${regular0};
              background-color: ${regular7};
            }

            #battery {
              color: ${regular0};
              background-color: ${regular6};
            }

            #battery.charging, #battery.plugged {
              color: ${regular0};
              background-color: ${regular6};
            }

            @keyframes blink {
              to {
                color: ${regular0};
                background-color: ${regular6};
              }
            }

            #battery.critical:not(.charging) {
              color: ${regular0};
              background-color: ${regular1};
              animation-name: blink;
              animation-duration: 0.5s;
              animation-timing-function: linear;
              animation-iteration-count: infinite;
              animation-direction: alternate;
            }

            #bluetooth {
              color: ${regular0};
              background-color: ${regular4};
            }

            label:focus {
              color: ${regular0};
              background-color: ${regular4};
            }

            #cpu {
              color: ${regular0};
              background-color: ${regular4};
            }

            #memory {
              color: ${regular0};
              background-color: ${regular5};
            }

            #disk {
              color: ${regular0};
              background-color: ${regular5};
            }

            #backlight {
              color: ${regular0};
              background-color: ${regular5};
            }

            #network {
              color: ${regular0};
              background-color: ${regular3};
            }

            #network.disconnected {
              color: ${regular0};
              background-color: ${regular3};
            }

            #pulseaudio {
              color: ${regular0};
              background-color: ${regular2};
            }

            #pulseaudio.muted {
              color: ${regular0};
              background-color: ${regular2};
            }

            #wireplumber {
              color: ${regular0};
              background-color: ${regular2};
            }

            #wireplumber.muted {
              color: ${regular0};
              background-color: ${regular2};
            }

            #custom-media {
              color: ${regular0};
              background-color: ${regular2};
              min-width: 100px;
            }

            #custom-media.custom-spotify {
              color: ${regular0};
              background-color: ${regular2};
            }

            #custom-media.custom-vlc {
              color: ${regular0};
              background-color: ${regular2};
            }

            #temperature {
              color: ${regular0};
              background-color: ${regular6};
            }

            #temperature.critical {
              background-color: ${regular6};
            }

            #tray {
              background-color: ${regular4};
            }

            #tray > .passive {
              -gtk-icon-effect: dim;
            }

            #tray > .needs-attention {
              -gtk-icon-effect: highlight;
              background-color: ${regular6};
            }

            #idle_inhibitor {
              background-color: ${regular6};
            }

            #idle_inhibitor.activated {
              background-color: ${regular6};
            }

            #mpd {
              background-color: #2d5b74;
            }

            #mpd.disconnected {
              background-color: #2d5b74;
            }

            #mpd.stopped {
              background-color: #2d5b74;
            }

            #mpd.paused {
              background-color: #2d5b74;
            }

            #language {
              background: #00b093;
              padding: 0 5px;
              margin: 0 5px;
              min-width: 16px;
            }

            #keyboard-state {
              background: #97e1ad;
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
