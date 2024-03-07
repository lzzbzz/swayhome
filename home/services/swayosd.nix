{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        swayosd = {
          enable = false;
        };
      };
    };
  };
}
