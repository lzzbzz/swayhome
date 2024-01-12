{ ... }: let
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
      programs = {
        zellij = {
          enable = true;
          enableFishIntegration = true;
          settings = {
            copy_command = "wl-copy";
            default_shell = "fish";
            pane_frames = false;
            simplified_ui = true;
            ui = {
              pane_frames = {
                hide_session_name = true;
                rounded_corners = true;
              };
            };
            theme = "${name}";
            themes = {
              ${name} = {
                fg = paper-white;
                bg = shade-black;
                black = charcoal-gray;
                red = icon-red;
                blue = noble-fir;
                yellow = icon-yellow;
                green = plasma-blue;
                magenta = hot-purple;
                cyan = hyper-blue;
                white = paper-white;
                orange = beware-orange;
              };
            };
          };
        };
      };
    };
  };
}
