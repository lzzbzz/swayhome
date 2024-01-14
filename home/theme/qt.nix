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
          name = "Breeze";
          package = pkgs.libsForQt5.breeze-qt5;
        };
      };
    };
  };
}
