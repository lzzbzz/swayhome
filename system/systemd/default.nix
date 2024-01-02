{
  config,
  pkgs,
  lib,
  ...
}: {
  systemd = {
    oomd = {
      enable = false; # Switch to earlyoom.
    };
  };
}
