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
        qutebrowser = {
          enable = true;
          settings = {
            tabs.tabs_are_windows = false;
            scrolling.smooth = true;
            zoom.default = 90;
            colors = {
              hints = {
                bg = "#232629";
                fg = "#fcfcfc";
              };
              tabs = {
                bar = {
                  bg = "#232629";
                };
                even = {
                  bg = "#232629";
                  fg = "#fcfcfc";
                };
                odd = {
                  bg = "#232629";
                  fg = "#fcfcfc";
                };
                selected = {
                  even = {
                    bg = "#263741";
                    fg = "#fcfcfc";
                  };
                  odd = {
                    bg = "#263741";
                    fg = "#fcfcfc";
                  };
                };
              };
              webpage = {
                darkmode = {
                  enabled = true;
                };
              };
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
