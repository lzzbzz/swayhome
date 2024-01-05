{
  config,
  lib,
  ...
}: {
  hardware = {
    cpu = {
      # amd or intel
      intel = {
        updateMicrocode =
         lib.mkDefault config.hardware.enableRedistributableFirmware;
      };
    };
  };
}
