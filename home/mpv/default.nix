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
        mpv = {
          enable = true;
          config = {
          };
        };
      };
    };
  };
}
