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
        espanso = {
          enable = true;
        };
      };
    };
  };
}
