{ ... }: let
  name = "lzbz";

in {
  home-manager = {
    users.${name} = {
      programs = {
        foot = {
          enable = true;
          settings = {
            main = {
              font = "Fira Code:size=8";
              dpi-aware = "no";
              pad = "15x15 center";
            };
            mouse = {
              hide-when-typing = "yes";
            };
            colors = { # colorscheme: catppuccin-frappe
              alpha = 1.0;
              foreground = "C6D0F5"; # text
              background = "303446"; # base
              regular0 = "51576D";   # surface 1
              regular1 = "E78284";   # red
              regular2 = "A6D189";   # green
              regular3 = "E5C890";   # yellow
              regular4 = "8CAAEE";   # blue
              regular5 = "F4B8E4";   # pink
              regular6 = "81C8BE";   # teal
              regular7 = "B5BFE2";   # subtext 1
              bright0 = "626880";    # surface 2
              bright1 = "E78284";    # red
              bright2 = "A6D189";    # green
              bright3 = "E5C890";    # yellow
              bright4 = "8CAAEE";    # blue
              bright5 = "F4B8E4";    # pink
              bright6 = "81C8BE";    # teal
              bright7 = "A5ADCE";    # subtext 0
            };
          };
        };
      };
    };
  };
}
