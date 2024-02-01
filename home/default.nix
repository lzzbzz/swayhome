{ ... }: let
  name = "hervyqa";
  ver = "23.11";
in {
  imports = [
    <home-manager/nixos>
    ./packages
    ./programs
    ./services
    ./themes
    ./wayland
    ./xdg
  ];

  home-manager = {
    useGlobalPkgs = true;
    users.${name} = {
      home = {
        homeDirectory = "/home/${name}";
        stateVersion = "${ver}";
        sessionVariables = {
          # session.
          XDG_CURRENT_DESKTOP = "sway";
          XDG_SESSION_DESKTOP = "sway";
          XDG_SESSION_TYPE = "wayland";

          # wayland stuff.
          MOZ_ENABLE_WAYLAND = "1";
          MOZ_USE_XINPUT2 = "1";
          QT_QPA_PLATFORM="wayland";
          QT_WAYLAND_DISABLE_WINDOWDECORATION="1";
          SDL_VIDEODRIVER = "wayland";
          _JAVA_AWT_WM_NONREPARENTING=1;
        };
      };
    };
  };
}
