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
        zathura = {
          enable = true;
          options = {
          };
        };
      };
    };
  };
}
