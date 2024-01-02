{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    clickhouse = {
      enable = false;
    };
  };
}
