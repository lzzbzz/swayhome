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
    ./fish
    ./foot
    ./gh
    ./git
    ./gpg
    ./helix
    ./htop
    ./imv
    ./java
    ./joshuto
    ./lazygit
    ./micro
    ./mpv
    ./neovim
    ./ncmpcpp
    ./qutebrowser
    ./swaylock
    ./waybar
    ./wofi
    ./zathura
    ./zellij
  ];
}
