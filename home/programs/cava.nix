{ ... }: let
  name = "hervyqa";

  # colors with quotation marks
  abyss-blue = "'#2980b9'";
  alternate-gray = "'#bdc3c7'";
  beware-orange = "'#f67400'";
  cadmium-orange = "'#ed872d'";
  cardboard-gray = "'#eff0f1'";
  charcoal-gray = "'#31363b'";
  citrus-yellow = "'#fcd116'";
  coastal-fog = "'#7f8c8d'";
  hover-blue = "'#93cee9'";
  hyper-blue = "'#3daee6'";
  icon-blue = "'#1d99f3'";
  icon-gray = "'#4d4d4d'";
  icon-red = "'#da4453'";
  icon-yellow = "'#fdbc4b'";
  lazy-gray = "'#afb0b3'";
  lightsaber-blue = "'#15f2fd'";
  noble-fir = "'#27ae60'";
  paper-white = "'#fcfcfc'";
  pimpinella= "'#e74c3c'";
  plasma-blue = "'#3daee9'";
  red-pink = "'#fa2a55'";
  shade-black = "'#232629'";
  spring-grass ="'#32e17c'";
  sunbeam-yellow = "'#c9ce3b'";

in {
  home-manager = {
    users.${name} = {
      programs = {
        cava = {
          enable = true;
          settings = {
            general = {
              framerate = 60;
              bars = 0;
              bar_width = 1;
              bar_spacing = 1;
            };
            smoothing = {
              noise_reduction = 88;
            };
            color = {
              gradient = 1;
              gradient_count = 3;
              gradient_color_1 = icon-blue;
              gradient_color_2 = plasma-blue;
              gradient_color_3 = hyper-blue;
              gradient_color_4 = paper-white;
            };
          };
        };
      };
    };
  };
}
