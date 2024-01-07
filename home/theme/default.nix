{
  config,
  pkgs,
  ...
}: {
  imports = [
    <home-manager/nixos>
    ./gtk.nix
    ./qt.nix
  ];
}
