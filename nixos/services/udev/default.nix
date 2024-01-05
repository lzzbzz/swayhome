{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    udev = {
      enable = true;
    };
  };
}
