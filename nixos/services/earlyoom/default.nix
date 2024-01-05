{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    earlyoom = {
      enable = true;
      freeMemThreshold = 5;
    };
  };
}
