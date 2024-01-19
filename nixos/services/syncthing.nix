{ ... }: let
  name = "hervyqa";
in {
  services = {
    syncthing = {
      enable = false;
      user = "${name}";
      group = "users";
      dataDir = "/home/${name}/documents";
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
          "sync" = {
            devices = [ "vivo1724" ];
            path = "/home/${name}/sync";
          };
          "camera" = {
            devices = [ "vivo1724" ];
            path = "/home/${name}/camera";
          };
        };
      };
    };
  };
}
