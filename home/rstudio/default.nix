{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs; let
          list-packages = with rPackages; [
            quarto
          ];
          r-with-packages =
          (
            rWrapper.override {
              packages = list-packages;
            }
          );
          rstudio-with-packages =
          (
            rstudioWrapper.override {
              packages = list-packages;
            }
          );
        in [
          r-with-packages
          rstudio-with-packages
        ];
      };
    };
  };
}
