{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  imports = [
    <home-manager/nixos>
    ./gpg-agent.nix
    ./kanshi.nix
    ./mako.nix
    ./mpd.nix
    ./ssh-agent.nix
    ./swayidle.nix
    ./swayosd.nix
  ];
}
