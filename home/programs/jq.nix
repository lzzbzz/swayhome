{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        jq = {
          enable = true;
        };
      };
    };
  };
}
