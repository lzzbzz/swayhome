{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        micro = {
          enable = false;
          settings = {
          };
        };
      };
    };
  };
}
