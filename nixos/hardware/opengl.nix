{
  pkgs,
  ...
}: {
  hardware = {
    opengl = {
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        intel-media-driver
        intel-vaapi-driver
        libvdpau-va-gl
        vaapiIntel
        vaapiVdpau
      ];
    };
  };
}
