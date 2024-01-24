{
  pkgs,
  ...
}:
  let
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
      config, ... }:
      {
      programs = {
        rofi = {
          enable = true;
          font = "Monospace 11";
          extraConfig = {
            case-sensitive = false;
            display-drun = "Apps:";
            modi = [ "drun" "run" ];
            show-icons = false;
          };
          pass = {
            enable = true;
            package = pkgs.rofi-pass-wayland;
            stores = [ "~/.pass" ];
          };
          theme = let mkLiteral = config.lib.formats.rasi.mkLiteral;
            in {
              "*" = {
                bg = mkLiteral "${shade-black}";
                fg = mkLiteral "${paper-white}";
                ac = mkLiteral "${plasma-blue}";
              };

              "#window" = {
                location = mkLiteral "center";
                width = mkLiteral "40%";
              };

              "#prompt" = {
                background-color = mkLiteral "@bg";
                text-color = mkLiteral "@fg";
              };

              "#textbox-prompt-colon" = {
                text-color = mkLiteral "@fg";
              };

              "#entry" = {
                background-color = mkLiteral "@bg";
                text-color = mkLiteral "@fg";
                blink = mkLiteral "true";
              };

              "#inputbar" = {
                children = mkLiteral "[ prompt, entry ]";
                background-color = mkLiteral "@bg";
                text-color = mkLiteral "@fg";
                padding = mkLiteral "5px";
              };

              "#listview" = {
                background-color = mkLiteral "@bg";
                columns = mkLiteral "1";
                lines = mkLiteral "5";
                cycle = mkLiteral "false";
                dynamic = mkLiteral "true";
              };

              "#mainbox" = {
                background-color = mkLiteral "@bg";
                border = mkLiteral "5px";
                border-color = mkLiteral "@ac";
                children = mkLiteral "[ inputbar, listview ]";
                padding = mkLiteral "10px";
              };

              "#element" = {
                background-color = mkLiteral "@bg";
                text-color = mkLiteral "@fg";
                padding = mkLiteral "5px";
              };

              "#element-icon" = {
                background-color = mkLiteral "@bg";
                text-color = mkLiteral "@fg";
                size = mkLiteral "32px";
              };

              "#element-text" = {
                background-color = mkLiteral "@bg";
                text-color = mkLiteral "@fg";
                padding = mkLiteral "5px";
              };

              "#element selected" = {
                border = mkLiteral "5px";
                border-color = mkLiteral "@ac";
              };
            }
          ;
        };
      };
    };
  };
}
