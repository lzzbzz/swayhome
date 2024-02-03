{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        wpaperd = {
          enable = true;
          settings = {
            default = {
              duration = "2m";
              path = "${./../../images/wallpapers}";
              sorting = "random";
              apply-shadow = false;
            };
          };
        };
      };
    };
  };
}