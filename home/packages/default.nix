{ ... }: {
  imports = [
    <home-manager/nixos>
    ./common.nix
    ./latex.nix
    ./language.nix
    ./octave.nix
    ./python.nix
    ./rstudio.nix
    ./unixodbc.nix
  ];
}
