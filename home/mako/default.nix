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
        mako = {
          enable = true;
        };
      };
    };
  };
}
