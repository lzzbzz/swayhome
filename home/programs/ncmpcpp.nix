{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        ncmpcpp = {
          enable = true;
          settings = {
          };
        };
      };
    };
  };
}
