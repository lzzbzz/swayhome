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
        bat = {
          enable = true;
          config = {
          };
        };
      };
    };
  };
}
