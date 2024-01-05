{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      services = {
        mpd = {
          enable = true;
          musicDirectory = "~/Music";
        };
      };
    };
  };
}