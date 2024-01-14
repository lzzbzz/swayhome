{ ... }: {
  imports = [
    <home-manager/nixos>
    ./common.nix
    ./gamedev.nix
    ./latex.nix
    ./libsqt5.nix
    ./language.nix
    ./octave.nix
    ./python.nix
    ./rstudio.nix
    ./unixodbc.nix
  ];
}
