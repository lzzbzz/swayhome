{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      services = {
        swayidle = {
          enable = true;
          events = [
            { event = "before-sleep"; command = "${pkgs.swaylock}/bin/swaylock -fF"; }
            { event = "lock"; command = "lock"; }
          ];
          timeouts = [
            { timeout = 60; command = "${pkgs.swaylock}/bin/swaylock -fF"; }
            { timeout = 90; command = "${pkgs.systemd}/bin/systemctl suspend"; }
          ];
        };
      };
    };
  };
}
