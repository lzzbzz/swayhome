{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
in {
  security.polkit.enable = true;
  environment = {
    etc = {
      "greetd/environments".text = ''
        sway
        fish
        bash
      '';
    };
    unixODBCDrivers = with pkgs;
    with unixODBCDrivers; [
      mariadb
      psql
      sqlite
    ];
  };
}
