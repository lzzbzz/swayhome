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
        qutebrowser = {
          enable = true;
          settings = {
          };
        };
      };
    };
  };
}
