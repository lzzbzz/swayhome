{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs; [
          gnuplot
          iredis
          litecli
          luigi
          mpi
          quarto
        ];
      };
    };
  };
}
