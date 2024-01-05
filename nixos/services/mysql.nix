{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    mysql = {
      enable = false;
      package = pkgs.mariadb;
    };
  };
}
