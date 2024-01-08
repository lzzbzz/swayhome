{
  config,
  pkgs,
  ...
}:
let
  name = "hervyqa";

  # colors
  abyss-blue = "#2980b9";
  alternate-gray = "#bdc3c7";
  beware-orange = "#f67400";
  cardboard-gray = "#eff0f1";
  charcoal-gray = "#31363b";
  coastal-fog = "#7f8c8d";
  hover-blue = "#93cee9";
  hyper-blue = "#3daee6";
  icon-blue = "#1d99f3";
  icon-gray = "#4d4d4d";
  icon-red = "#da4453";
  icon-yellow = "#fdbc4b";
  lazy-gray = "#afb0b3";
  noble-fir = "#27ae60";
  paper-white = "#fcfcfc";
  pimpinella= "#e74c3c";
  plasma-blue = "#3daee9";
  shade-black = "#232629";
  sunbeam-yellow = "#c9ce3b";

in {
  home-manager = {
    users.${name} = {
      services = {
        mako = {
          enable = true;
          defaultTimeout = 5000; # 5s
          font = "monospace 8";
          margin = "30";
          padding = "5";
          borderSize = 5;
          borderColor = plasma-blue;
          backgroundColor = shade-black;
          textColor = paper-white;
        };
      };
    };
  };
}
