{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    fstrim = {
      enable = true;
    };
  };
}
