{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        java = {
          enable = true;
        };
      };
    };
  };
}
