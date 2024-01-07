{
  config,
  pkgs,
  lib,
  ...
}: {
  system = {
    autoUpgrade = {
      enable = false;
      allowReboot = false;
    };
  };
}
