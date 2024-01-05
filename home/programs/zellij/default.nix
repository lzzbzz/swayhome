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
        zellij = {
          enable = true;
          enableFishIntegration = true;
          settings = {
            copy_command = "wl-copy";
            default_shell = "fish";
            pane_frames = false;
            simplified_ui = true;
          };
        };
      };
    };
  };
}
