{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";

  # colors
  abyss-blue = "#2980b9";
  alternate-gray = "#bdc3c7";
  beware-orange = "#f67400";
  cadmium-orange = "#ed872d";
  cardboard-gray = "#eff0f1";
  charcoal-gray = "#31363b";
  citrus-yellow = "#fcd116";
  coastal-fog = "#7f8c8d";
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
  plasma-blue = "#3daee9";
  red-pink = "#fa2a55";
  shade-black = "#232629";
  spring-grass ="#00ff7c";
  sunbeam-yellow = "#c9ce3b";

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
                bg = shade-black;
                fg = paper-white;
              };
              tabs = {
                bar = {
                  bg = shade-black;
                };
                even = {
                  bg = shade-black;
                  fg = paper-white;
                };
                odd = {
                  bg = shade-black;
                  fg = paper-white;
                };
                selected = {
                  even = {
                    bg = charcoal-gray;
                    fg = paper-white;
                  };
                  odd = {
                    bg = charcoal-gray;
                    fg = paper-white;
                  };
                };
              };
              statusbar = {
                caret= {
                  bg = shade-black;
                };
                command = {
                  bg = shade-black;
                };
                insert = {
                  bg = shade-black;
                };
                normal = {
                  bg = shade-black;
                };
                passthrough = {
                  bg = shade-black;
                };
                progress = {
                  bg = plasma-blue;
                };
                url = {
                  success = {
                    https = {
                      fg = spring-grass;
                    };
                  };
                };
              };
              webpage = {
                darkmode = {
                  enabled = true;
                  policy = {
                    images = "never";
                    page = "always";
                  };
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
