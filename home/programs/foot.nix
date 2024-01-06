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
            };
          };
        };
      };
    };
  };
}
