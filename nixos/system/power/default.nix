{
  config,
  pkgs,
  lib,
  ...
}: {
  powerManagement = {
    enable = true;
    powertop = {
      enable = false;
    };
  };
}
