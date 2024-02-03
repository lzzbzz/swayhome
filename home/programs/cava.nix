{ ... }: let
  name = "hervyqa";

  # colors with quotation marks
  bright4 = "'#8CAAEE'";    # blue
  bright5 = "'#F4B8E4'";    # pink
  bright6 = "'#81C8BE'";    # teal
  bright7 = "'#A5ADCE'";    # subtext 0

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
              gradient_count = 4;
              gradient_color_1 = bright7;
              gradient_color_2 = bright4;
              gradient_color_3 = bright6;
              gradient_color_4 = bright5;
            };
          };
        };
      };
    };
  };
}
