{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        bottom = {
          enable = true;
          config = {
            flags = {
              avg_cpu = true;
              temperature_type = "c";
            };
            colors = {
              low_battery_color = "red";
            };
          };
        };
      };
    };
  };
}
