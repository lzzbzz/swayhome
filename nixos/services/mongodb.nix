{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    mongodb = {
      enable = false;
    };
  };
}
