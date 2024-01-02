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
        gh = {
          enable = true;
          settings = {
            editor = "hx";
            git_protocol = "ssh";
          };
        };
      };
    };
  };
}
