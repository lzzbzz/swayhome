{ ... }: {
  imports = [
    ./gpg-agent.nix
    ./kanshi.nix
    ./keyring.nix
    ./mako.nix
    ./mpd.nix
    ./ssh-agent.nix
    ./swayidle.nix
    ./swayosd.nix
    ./syncthing.nix
  ];
}
