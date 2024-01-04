{
  config,
  pkgs,
  lib,
  ...
}: let
  ver = "23.11";
in {
  system = {
    autoUpgrade = {
      enable = false;
      allowReboot = false;
    };
    stateVersion = "${ver}";
  };
}
