{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs;
        with unixODBCDrivers; [
          psql
          sqlite
        ];
      };
    };
  };
}
