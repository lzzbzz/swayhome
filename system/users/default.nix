{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
  fullname = "Hervy Qurrotul Ainur Rozi";
in {
  users = {
    defaultUserShell = pkgs.fish;
    users = {
      ${name} = {
        isNormalUser = true;
        description = "${fullname}";
        uid = 1000;
        extraGroups = [
          "adbusers"
          "audio"
          "clamav"
          "corectrl"
          "disk"
          "docker"
          "input"
          "jupyter"
          "lp"
          "mongodb"
          "mysql"
          "network"
          "networkmanager"
          "postgres"
          "power"
          "scanner"
          "sound"
          "systemd-journal"
          "users"
          "video"
          "wheel"
        ];
      };
    };
  };
}
