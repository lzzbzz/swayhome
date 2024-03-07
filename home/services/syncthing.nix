{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        syncthing = {
          enable = false;
        };
      };
    };
  };
}
