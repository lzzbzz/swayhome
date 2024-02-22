{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      xdg = {
        configFile = {
          "Kvantum".source = ./kvantum;
          "qt5ct".source = ./qt5ct;
          "qt6ct".source = ./qt6ct;
          "rstudio".source = ./rstudio;
        };
      };
    };
  };
}
