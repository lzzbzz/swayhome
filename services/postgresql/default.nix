{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    postgresql = {
      enable = false;
    };
  };
}
