{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
in {
  security.polkit.enable = true;
  environment = {
    etc = {
      "greetd/environments".text = ''
        sway
        fish
        bash
      '';
    };
    unixODBCDrivers = with pkgs;
    with unixODBCDrivers; [
      mariadb
      psql
      sqlite
    ];
    sessionVariables = {
      MOZ_ENABLE_WAYLAND = "1";
      MOZ_USE_XINPUT2 = "1";
      XDG_SESSION_TYPE = "wayland";
      XDG_CURRENT_DESKTOP = "sway";
      SDL_VIDEODRIVER = "wayland";
      QT_QPA_PLATFORM="wayland";
      QT_QPA_PLATFORMTHEME = "qt5ct";
      QT_WAYLAND_DISABLE_WINDOWDECORATION="1";
      QTWEBENGINE_CHROMIUM_FLAGS = "--force-dark-mode";
    };
  };
}
