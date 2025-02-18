{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        imv = {
          enable = true;
          settings = {
            options = {
              fullscreen = false;
            };
          };
        };
      };
    };
  };
}
