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
        lazygit = {
          enable = true;
        };
      };
    };
  };
}