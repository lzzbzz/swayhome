{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        gpg = {
          enable = true;
        };
      };
    };
  };
}
