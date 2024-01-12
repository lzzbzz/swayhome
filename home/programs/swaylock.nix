{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        swaylock = {
          enable = true;
          settings = {
          };
        };
      };
    };
  };
}
