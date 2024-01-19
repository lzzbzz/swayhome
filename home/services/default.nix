{ ... }: {
  imports = [
    ./gpg-agent.nix
    ./kanshi.nix
    ./mako.nix
    ./mpd.nix
    ./ssh-agent.nix
    ./swayidle.nix
    ./swayosd.nix
    ./syncthing.nix
  ];
}
