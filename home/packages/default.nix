{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  imports = [
    <home-manager/nixos>
    ./common
    ./latex
    ./octave
    ./python
    ./rstudio
    ./unixodbc
  ];
}
