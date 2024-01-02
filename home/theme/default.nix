{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      gtk = {
        enable = true;
        font = {
          name = "Monospace";
          size= 8;
        };
        theme = {
          name = "Breeze-Dark";
          package = pkgs.libsForQt5.breeze-gtk;
        };
        iconTheme = {
          name = "Papirus-Dark";
          package = pkgs.papirus-icon-theme;
        };
        cursorTheme = {
          name = "breeze_cursor";
        };
      };
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
