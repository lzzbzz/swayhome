{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    metabase = {
      enable = false;
    };
  };
}
