{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      services = {
        swayosd = {
          enable = false;
          maxVolume = 120;
        };
      };
    };
  };
}
