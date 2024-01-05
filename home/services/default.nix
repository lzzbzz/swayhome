{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  imports = [
    <home-manager/nixos>
    ./espanso
    ./gpg-agent
    ./kanshi
    ./mako
    ./mpd
    ./ssh-agent
    ./swayidle
    ./swayosd
  ];
}
