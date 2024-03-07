{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        cliphist = {
          enable = true;
        };
      };
    };
  };
}
