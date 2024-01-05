{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      services = {
        swayosd = {
          enable = true;
          maxVolume = 120;
        };
      };
    };
  };
}
