{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        cava = {
          enable = true;
          settings = {
          };
        };
      };
    };
  };
}
