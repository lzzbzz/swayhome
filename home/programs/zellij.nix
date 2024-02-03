{ ... }: let
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
            ui = {
              pane_frames = {
                hide_session_name = true;
                rounded_corners = true;
              };
            };
            theme = "catppuccin-frappe";
          };
        };
      };
    };
  };
}
