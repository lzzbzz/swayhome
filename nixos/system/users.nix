{
  pkgs,
  ...
}: let
  name = "lzbz";
  fullname = "lzbz";
in {
  users = {
    defaultUserShell = pkgs.fish;
    users = {
      ${name} = {
        isNormalUser = true;
        description = "${fullname}";
        uid = 1000;
        extraGroups = [
          # "adbusers"
          "audio"
          "clamav"
          "corectrl"
          "disk"
          # "docker"
          "input"
          # "jupyter"
          "lp"
          # "mongodb"
          # "mysql"
          "network"
          "networkmanager"
          # "postgres"
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
