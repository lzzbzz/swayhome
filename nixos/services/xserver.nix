{
  pkgs,
  ...
}: let
  name = "lzbz";
  layout = "us";
in {
  services = {
    xserver = {
      enable = true;
      desktopManager = {
        xterm = {
          enable = false;
        };
      };
      displayManager = {
        sessionPackages = [ pkgs.sway ];
        lightdm = {
          enable = false;
          greeter = {
            enable = false;
          };
        };
        autoLogin = {
          enable = true;
          user = "${name}";
        };
      };
      excludePackages = with pkgs; [
        xterm
      ];
      layout = "${layout}";
      libinput = {
        enable = true;
      };
      # default settings
      videoDrivers = [
        "amdgpu"
        "radeon"
        "nouveau"
        "modesetting"
        "fbdev"
      ];
      xkbVariant = "";
    };
  };
}
