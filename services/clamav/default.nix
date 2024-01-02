{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    clamav = {
      daemon = {
        enable = false;
      };
      updater = {
        enable = false;
      };
    };
  };
}
