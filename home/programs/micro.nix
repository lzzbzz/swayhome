{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        micro = {
          enable = true;
          settings = {
          };
        };
      };
    };
  };
}
