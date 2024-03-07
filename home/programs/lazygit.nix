{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        lazygit = {
          enable = false;
        };
      };
    };
  };
}
