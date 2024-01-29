{ ... }: let
  name = "hervyqa";
  plasma-blue = "#3daee9";
  paper-white = "#fcfcfc";
  shade-black = "#232629";
  charcoal-gray = "#31363b";
in {
  home-manager = {
    users.${name} = {
      programs = {
        zathura = {
          enable = true;
          options = {
            adjust-open = "width";
            font = "Monospace 8";
            pages-per-row = 1;
            scroll-page-aware = true;
            scroll-step = 50;
            completion-bg = "${charcoal-gray}";
            completion-fg = "${paper-white}";
            completion-highlight-bg = "${plasma-blue}";
            default-bg = "${shade-black}";
            default-fg = "${paper-white}";
            highlight-color = "${plasma-blue}";
            highlight-fg = "${shade-black}";
            inputbar-bg = "${shade-black}";
            inputbar-fg = "${paper-white}";
            notification-bg = "${plasma-blue}";
            notification-fg = "${shade-black}";
            recolor-darkcolor = "${paper-white}";
            recolor-lightcolor = "${shade-black}";
            statusbar-bg = "${shade-black}";
            statusbar-fg = "${paper-white}";
            statusbar-home-tilde = true;
            window-title-basename = true;
          };
        };
      };
    };
  };
}
