{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        imv = {
          enable = true;
          settings = {
            options = {
              fullscreen = true;
              recursively = true;
            };
          };
        };
      };
    };
  };
}
