{
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
          name = "Catppuccin-Frappe-Standard-Blue-Dark";
          package = pkgs.catppuccin-gtk;
        };
        iconTheme = {
          name = "Papirus-Dark";
          package = pkgs.catppuccin-papirus-folders;
        };
        cursorTheme = {
          name = "Catppuccin-Frappe-Blue";
          package = pkgs.catppuccin-cursors;
        };
        gtk3.extraConfig = {
          gtk-application-prefer-dark-theme=true;
        };
        gtk4.extraConfig = {
          gtk-application-prefer-dark-theme=true;
        };
      };
    };
  };
}
