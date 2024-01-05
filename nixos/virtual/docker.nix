{
  config,
  pkgs,
  lib,
  ...
}: {
  virtualisation = {
    docker = {
      enable = false;
      enableOnBoot = false;
      autoPrune = {
        enable = true;
      };
    };
  };
}
