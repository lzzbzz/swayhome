{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    openssh = {
      enable = false;
    };
  };
}
