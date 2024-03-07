{
  pkgs,
  ...
}: let
  name = "lzbz";

  # colors
  rosewater = "#F2D5CF";
  flamingo  = "#EEBEBE";
  pink      = "#F4B8E4";
  mauve     = "#CA9EE6";
  red       = "#E78284";
  maroon    = "#EA999C";
  peach     = "#EF9F76";
  yellow    = "#E5C890";
  green     = "#A6D189";
  teal      = "#81C8BE";
  sky       = "#99D1DB";
  sapphire  = "#85C1DC";
  blue      = "#8CAAEE";
  lavender  = "#BABBF1";
  text      = "#C6D0F5";
  subtext1  = "#B5BFE2";
  subtext0  = "#A5ADCE";
  overlay2  = "#949CBB";
  overlay1  = "#838BA7";
  overlay0  = "#737994";
  surface2  = "#626880";
  surface1  = "#51576D";
  surface0  = "#414559";
  base      = "#303446";
  mantle    = "#292C3C";
  crust     = "#232634";

in {
  home-manager = {
    users.${name} = {
      programs = {
        qutebrowser = {
          enable = true;
          settings = {
            tabs.tabs_are_windows = false;
            scrolling.smooth = true;
            zoom.default = 90;
            colors = {
              webpage = {
                preferred_color_scheme = "dark";
                bg = base;
                darkmode = {
                  enabled = false;
                  policy = {
                    page = "always";
                  };
                };
              };
              completion = {
                category = {
                  bg = base;
                  border.bottom = mantle;
                  border.top = overlay2;
                  fg = green;
                };
                fg = subtext0;
                item = {
                  selected = {
                    bg = surface2;
                    border = {
                      bottom = surface2;
                      top = surface2;
                    };
                    fg = text;
                    match.fg = rosewater;
                  };
                };
                match = {
                  fg = text;
                };
                scrollbar = {
                  bg = crust;
                  fg = surface2;
                };
                odd = {
                  bg = mantle;
                };
                even = {
                  bg = crust;
                };
              };
              downloads= {
                bar.bg = base;
                error.bg = base;
                error.fg = red;
                start.bg = base;
                start.fg = blue;
                stop.bg = base;
                stop.fg = green;
                system.bg = "none";
                system.fg = "none";
              };
              hints = {
                bg = peach;
                fg = mantle;
                match.fg = subtext1;
              };
              keyhint = {
                bg = mantle;
                fg = text;
                suffix.fg = subtext1;
              };
              messages = {
                error.bg = overlay0;
                error.border = mantle;
                error.fg = red;
                info.bg = overlay0;
                info.border = mantle;
                info.fg = text;
                warning.bg = overlay0;
                warning.border = mantle;
                warning.fg = peach;
              };
              prompts = {
                bg = mantle;
                border = "1px solid " + overlay0;
                fg = text;
                selected.bg = surface2;
                selected.fg = rosewater;
              };
              statusbar = {
                normal.bg = base;
                insert.bg = crust;
                command.bg = base;
                caret.bg = base;
                caret.selection.bg = base;
                progress.bg = base;
                passthrough.bg = base;
                normal.fg = text;
                insert.fg = rosewater;
                command.fg = text;
                passthrough.fg = peach;
                caret.fg = peach;
                caret.selection.fg = peach;
                url.error.fg = red;
                url.fg = text;
                url.hover.fg = sky;
                url.success.http.fg = teal;
                url.success.https.fg = green;
                url.warn.fg = yellow;
                private.bg = mantle;
                private.fg = subtext1;
                command.private.bg = base;
                command.private.fg = subtext1;
              };
              tabs = {
                bar.bg = crust;
                even.bg = surface2;
                odd.bg = surface1;
                even.fg = overlay2;
                odd.fg = overlay2;
                indicator.error = red;
                indicator.system = "none";
                selected.even.bg = base;
                selected.odd.bg = base;
                selected.even.fg = text;
                selected.odd.fg = text;
              };
              contextmenu = {
                menu.bg = base;
                menu.fg = text;
                disabled.bg = mantle;
                disabled.fg = overlay0;
                selected.bg = overlay0;
                selected.fg = rosewater;
              };
            };
            content = {
              autoplay = false;
              notifications = {
                enabled = true;
              };
              blocking.adblock.lists = [
                "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt"
                "https://easylist-downloads.adblockplus.org/easylist.txt"
                "https://easylist-downloads.adblockplus.org/easyprivacy.txt"
                "https://easylist-downloads.adblockplus.org/fanboy-notifications.txt"
                "https://easylist-downloads.adblockplus.org/fanboy-social.txt"
                "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Anti-Elsagate List.txt"
                "https://raw.githubusercontent.com/Spam404/lists/master/adblock-list.txt"
                "https://raw.githubusercontent.com/heradhis/indonesianadblockrules/master/subscriptions/abpindo.txt"
                "https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/nocoin.txt"
                "https://raw.githubusercontent.com/kbinani/adblock-youtube-ads/master/signed.txt"
                "https://raw.githubusercontent.com/reek/anti-adblock-killer/master/anti-adblock-killer-filters.txt"
                "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt"
                "https://www.fanboy.co.nz/enhancedstats.txt"
              ];
            };
            fonts = {
              completion.entry = "8.0pt Monospace";
              debug_console = "8.0pt Monospace";
              default_family = [ "Monospace" "Liberation Mono" ];
              downloads = "8.0pt Monospace";
              hints = "8.0pt Monospace";
              keyhint = "8.0pt Monospace";
              messages.error = "8.0pt Monospace";
              messages.info = "8.0pt Monospace";
              messages.warning = "8.0pt Monospace";
              statusbar = "8.0pt Monospace";
            };
          };
        };
      };
    };
  };
}
