{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
in {
  nixpkgs = {
    config = {
      allowUnfree = true;
      firefox = {
        enablePlasmaBrowserIntegration = false;
      };
      permittedInsecurePackages = [];
    };
  };

  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--max-freed 1G --delete-older-than 7d";
    };
    optimise = {
      automatic = true;
    };
    settings = {
      allowed-users = ["@wheel"];
      auto-optimise-store = true;
      sandbox = true;
      trusted-users = ["root" "${name}"];
    };
  };
}
