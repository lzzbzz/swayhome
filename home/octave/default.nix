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
        packages = with pkgs;
        with octavePackages; [
          octave
          database
          dataframe
          data-smoothing
          financial
          fits
          fpl
          general
          gsl
          linear-algebra
          nan
          splines
          statistics
          symbolic
        ];
      };
    };
  };
}
