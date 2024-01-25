{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        zathura = {
          enable = true;
          options = {
            adjust-open = "best-fit";
            font = "Monospace 8";
            pages-per-row = 1;
            scroll-page-aware = true;
            scroll-step = 50;
          };
        };
      };
    };
  };
}
