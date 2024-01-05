{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "nixos";
in {
  services = {
    redis = {
      servers = {
        "${name}" = {
          enable = false;
          port = 6379;
        };
      };
    };
  };
}
