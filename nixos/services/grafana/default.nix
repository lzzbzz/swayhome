{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    grafana = {
      enable = false;
    };
  };
}
