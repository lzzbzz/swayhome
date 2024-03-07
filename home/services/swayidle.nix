{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        swayidle = {
          enable = true;
          events = [
            { event = "before-sleep"; command = "${pkgs.swaylock}/bin/swaylock"; }
            { event = "lock"; command = "${pkgs.swaylock}/bin/swaylock"; }
          ];
          timeouts = [
            { timeout = 300; command = "${pkgs.swaylock}/bin/swaylock -fF"; }
          ];
        };
      };
    };
  };
}
