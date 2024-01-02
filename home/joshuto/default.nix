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
            xdg_open_fork = true;
            display = {
              show_icons = false;
            };
            preview = {
              max_preview_size = 2097152;
              preview_script = "${./preview_file.sh}";
            };
          };
        };
      };
    };
  };
}
