{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";

  # colors without hastag
  abyss-blue = "2980b9";
  alternate-gray = "bdc3c7";
  beware-orange = "f67400";
  cardboard-gray = "eff0f1";
  charcoal-gray = "31363b";
  coastal-fog = "7f8c8d";
  hover-blue = "93cee9";
  hyper-blue = "3daee6";
  icon-blue = "1d99f3";
  icon-gray = "4d4d4d";
  icon-red = "da4453";
  icon-yellow = "fdbc4b";
  lazy-gray = "afb0b3";
  noble-fir = "27ae60";
  paper-white = "fcfcfc";
  pimpinella= "e74c3c";
  plasma-blue = "3daee9";
  shade-black = "232629";
  sunbeam-yellow = "c9ce3b";

in {
  home-manager = {
    users.${name} = {
      programs = {
        foot = {
          enable = true;
          settings = {
            main = {
              font = "monospace:size=8";
              dpi-aware = "no";
              pad = "15x15 center";
            };
            mouse = {
              hide-when-typing = "yes";
            };
            colors = {
              alpha = 0.9;
              background = shade-black;
              foreground = paper-white;
              regular0 = shade-black; # black
              regular1 = icon-red; # red
              regular2 = noble-fir; # green
              regular3 = icon-yellow; # yellow
              regular4 = plasma-blue; # blue
              regular5 = beware-orange; # magenta
              regular6 = hyper-blue; # cyan
              regular7 = paper-white; # white
              bright0 = alternate-gray;  # bright black
              bright1 = icon-red; # bright red
              bright2 = noble-fir; # bright green
              bright3 = sunbeam-yellow; # bright yellow
              bright4 = hyper-blue; # bright blue
              bright5 = beware-orange; # bright magenta
              bright6 = hover-blue; # bright cyan
              bright7 = paper-white; # bright white
            };
          };
        };
      };
    };
  };
}
