{ ... }: {
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/EFI";
      };
      grub = {
        # true: If dual boot.
        useOSProber = false;
        splashImage = null;
      };
      timeout = 3;
    };
    initrd.secrets = {
      "/crypto_keyfile.bin" = null;
    };
    kernel = {
      sysctl = {
        "vm.swappiness" = 1;
      };
    };
  };
}
