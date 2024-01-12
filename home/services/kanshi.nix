{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      services = {
        kanshi = {
          enable = true;
        };
      };
    };
  };
}
