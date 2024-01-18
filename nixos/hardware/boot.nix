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
        "sd_mod"
        "sr_mod"
        "uas"
        "usb_storage"
        "usbhid"
        "xhci_pci"
      ];
      kernelModules = [
        "amdgpu"
      ];
      luks.devices = {
        "nixos" = {
          device = "/dev/disk/by-uuid/832b5bb1-889c-407d-972a-db398eab8c59";
        };
      };
    };
    kernelModules = [
      "kvm-amd"
      "kvm-intel"
      "snd-aloop"
      "v4l2loopback"
    ];
    kernelPackages = pkgs.linuxPackages-rt_latest;
    kernelParams = [
      "mitigations=off"
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
