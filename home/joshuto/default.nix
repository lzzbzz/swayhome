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
        joshuto = {
          enable = true;
          settings = {
            numbered_command = false;
            scroll_offset = 3;
            show_borders = false;
            use_trash = true;
            watch_files = true;
            xdg_open = true;
            xdg_open_fork = false;
            display = {
              show_icons = false;
            };
          };
        };
      };
    };
  };
}
