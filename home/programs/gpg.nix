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
        gpg = {
          enable = true;
        };
      };
    };
  };
}
