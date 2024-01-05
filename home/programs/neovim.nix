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
        neovim = {
          enable = true;
          viAlias = true;
          vimAlias = true;
          vimdiffAlias = true;
          withNodeJs = true;
          withPython3 = true;
          withRuby = true;
          coc = {
            enable = true;
          };
          plugins = with pkgs.vimPlugins; [
            nvim-autopairs
            nvim-lastplace
            nvim-metals
            nvim-web-devicons
            scope-nvim
            scrollbar-nvim
            statix
            surround-nvim
            tabline-nvim
            telescope-nvim
            vim-airline
            vim-airline-themes
            vim-commentary
            vim-lightline-coc
            vim-wayland-clipboard
            yankring
            vim-nix
          ];
        };
      };
    };
  };
}
