{
  config,
  pkgs,
  ...
}: {
  boot = {
    initrd = {
      availableKernelModules = [
        "ahci"
        "ehci_pci"
        "nvme"
        "sd_mod"
        "sr_mod"
        "thunderbolt"
        "uas"
        "usb_storage"
        "usbhid"
        "xhci_pci"
      ];
      kernelModules = [ ];
    };
    kernelModules = [
      "kvm-intel"
      "snd-aloop"
      "v4l2loopback"
    ];
    kernelPackages = pkgs.linuxPackages-rt_latest;
    kernelParams = [
      "mitigations=auto"
    ];
    plymouth = {
      enable = false;
    };
    extraModulePackages = with config.boot.kernelPackages; [
      v4l2loopback.out
    ];
    extraModprobeConfig = ''
      options v4l2loopback exclusive_caps=1 card_label="Virtual Camera"
    '';
  };
}
