{
  config,
  pkgs,
  ...
}: {
  imports = [
    <home-manager/nixos>
    ./common.nix
    ./latex.nix
    ./octave.nix
    ./python.nix
    ./rstudio.nix
    ./unixodbc.nix
  ];
}
