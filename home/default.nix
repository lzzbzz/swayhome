{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
  ver = "23.11";
in {
  imports = [
    <home-manager/nixos>
    ./packages
    ./programs
    ./services
    ./theme
    ./wayland
  ];

  home-manager = {
    useGlobalPkgs = true;
    users.${name} = {
      home = {
        homeDirectory = "/home/${name}";
        stateVersion = "${ver}";
        sessionVariables = {
          MOZ_ENABLE_WAYLAND = "1";
          MOZ_USE_XINPUT2 = "1";
          XDG_SESSION_TYPE = "wayland";
          XDG_CURRENT_DESKTOP = "sway";
          SDL_VIDEODRIVER = "wayland";
          QT_QPA_PLATFORM="wayland";
          QT_QPA_PLATFORMTHEME = "qt5ct";
          QT_WAYLAND_DISABLE_WINDOWDECORATION="1";
          _JAVA_AWT_WM_NONREPARENTING=1;
        };
      };
    };
  };
}
