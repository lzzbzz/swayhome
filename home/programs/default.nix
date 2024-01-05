{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  imports = [
    <home-manager/nixos>
    ./bat.nix
    ./cava.nix
    ./fish.nix
    ./foot.nix
    ./gh.nix
    ./git.nix
    ./gpg.nix
    ./helix.nix
    ./htop.nix
    ./imv.nix
    ./java.nix
    ./joshuto.nix
    ./lazygit.nix
    ./micro.nix
    ./mpv.nix
    ./neovim.nix
    ./ncmpcpp.nix
    ./qutebrowser.nix
    ./swaylock.nix
    ./waybar.nix
    ./wofi.nix
    ./zathura.nix
    ./zellij.nix
  ];
}
