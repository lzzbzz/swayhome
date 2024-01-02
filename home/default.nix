{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  imports = [
    <home-manager/nixos>
    ./bat
    ./cava
    ./common
    ./espanso
    ./fish
    ./foot
    ./gh
    ./git
    ./gpg
    ./gpg-agent
    ./helix
    ./htop
    ./imv
    ./java
    ./joshuto
    ./latex
    ./lazygit
    ./mako
    ./mpd
    ./mpv
    ./neovim
    ./ncmpcpp
    ./octave
    ./python
    ./qutebrowser
    ./rstudio
    ./ssh-agent
    ./sway
    ./swaylock
    ./swayosd
    ./theme
    ./unixodbc
    ./vscodium
    ./waybar
    ./wofi
    ./zathura
    ./zellij
  ];

  home-manager = {
    useGlobalPkgs = true;
    users.${name} = {
      home = {
        homeDirectory = "/home/${name}";
        stateVersion = "24.05";
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
          _JAVA_AWT_WM_NONREPARENTING=1;
        };
      };
    };
  };
}
