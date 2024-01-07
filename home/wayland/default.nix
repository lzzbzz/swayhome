{
  config,
  pkgs,
  ...
}: {
  imports = [
    <home-manager/nixos>
    ./sway.nix
  ];
}
