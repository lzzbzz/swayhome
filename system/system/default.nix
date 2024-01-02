{
  config,
  pkgs,
  lib,
  ...
}: let
  ver = "24.05";
in {
  system = {
    autoUpgrade = {
      enable = false;
      allowReboot = false;
    };
    stateVersion = "${ver}";
  };
}
