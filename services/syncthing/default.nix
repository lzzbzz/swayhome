{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
in {
  services = {
    syncthing = {
      enable = true;
      user = "${name}";
      group = "users";
      dataDir = "/home/${name}/Documents";
      overrideDevices = true;
      overrideFolders = true;
      settings = {
          gui = {
          theme = "dark";
        };
        options = {
          localAnnounceEnabled = false;
          urAccepted = -1;
        };
        devices = {
          "vivo1724" = {
            id = "WSR5KXT-32GVLRU-MUA3LCG-TN365FW-CKAXGV2-V3OI4AN-L7SUZ5Z-JK6AIQV";
          };
        };
        folders = {
          "Sync" = {
            devices = [ "vivo1724" ];
            path = "/home/${name}/Sync";
          };
          "Camera" = {
            devices = [ "vivo1724" ];
            path = "/home/${name}/Camera";
          };
        };
      };
    };
  };
}
