{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        xsettingsd = {
          enable = true;
          settings = {
            "Net/ThemeName" = "Catppuccin-Frappe-Standard-Blue-Dark";
            "Gdk/UnscaledDPI" = 98304;
            "Gdk/WindowScalingFactor" = 1;
            "Gtk/EnableAnimations" = 1;
            "Gtk/DecorationLayout" = "icon:minimize,maximize,close";
            "Gtk/PrimaryButtonWarpsSlider" = 0;
            "Gtk/ToolbarStyle" = 3;
            "Gtk/MenuImages" = 1;
            "Gtk/ButtonImages" = 1;
            "Gtk/CursorThemeSize" = 24;
            "Gtk/CursorThemeName" = "Catppuccin-Frappe-Blue";
            "Net/IconThemeName" = "Papirus-Dark";
            "Gtk/FontName" = "Fira Code, 8";
            "Xft/Antialias" = true;
            "Xft/Hinting" = true;
            "Xft/RGBA" = "rgb";
          };
        };
      };
    };
  };
}
