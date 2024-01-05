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
            tabs.tabs_are_windows = false;
            scrolling.smooth = true;
            zoom.default = 90;
            colors = {
              hints = {
                bg = "#2980b9";
                fg = "#ffffff";
              };
              tabs.bar.bg = "#000000";
            };
            fonts = {
              completion.entry = "8.0pt Monospace";
              debug_console = "8.0pt Monospace";
              default_family = [ "Monospace" "Liberation Mono" ];
              downloads = "8.0pt Monospace";
              hints = "8.0pt Monospace";
              keyhint = "8.0pt Monospace";
              messages.error = "8.0pt Monospace";
              messages.info = "8.0pt Monospace";
              messages.warning = "8.0pt Monospace";
              statusbar = "8.0pt Monospace";
            };
          };
        };
      };
    };
  };
}
