{ ... }: {
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/a39d00b6-e59a-434a-931e-f318874b70a1";
      fsType = "btrfs";
      # for ssd
      options = [
        "noatime"
        "nodiratime"
        "discard"
      ];
    };
    "/boot/efi" = {
      device = "/dev/disk/by-uuid/A3B7-A67F";
      fsType = "vfat";
    };
  };
}
