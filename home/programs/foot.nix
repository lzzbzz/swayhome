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
              background = "232629";
              foreground = "eceff1";
              regular0 = "232629";  # black
              regular1 = "da4453";  # red
              regular2 = "27ae60";  # green
              regular3 = "fdbc4b";  # yellow
              regular4 = "1e92ff";  # blue
              regular5 = "f67400";  # magenta
              regular6 = "3daee6";  # cyan
              regular7 = "ffffff";  # white
              bright0 = "b0bec5";   # bright black
              bright1 = "ff8a80";   # bright red
              bright2 = "b9f6ca";   # bright green
              bright3 = "ffe57f";   # bright yellow
              bright4 = "80d8ff";   # bright blue
              bright5 = "ff80ab";   # bright magenta
              bright6 = "a7fdeb";   # bright cyan
              bright7 = "ffffff";   # bright white
            };
          };
        };
      };
    };
  };
}
