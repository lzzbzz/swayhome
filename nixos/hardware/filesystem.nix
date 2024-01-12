{ ... }: {
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/9395a257-5640-493e-acf9-dcb11761f052";
      fsType = "ext4";
      # for ssd
      options = [
        "noatime"
        "nodiratime"
        "discard"
      ];
    };
    "/boot/efi" = {
      device = "/dev/disk/by-uuid/686D-6983";
      fsType = "vfat";
    };
  };
}
