{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      qt = {
        enable = true;
        style = {
          name = "Breeze Dark";
          package = pkgs.libsForQt5.breeze-qt5;
        };
      };
    };
  };
}
