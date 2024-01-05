{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
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
