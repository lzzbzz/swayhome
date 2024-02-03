{ ... }: let
  name = "hervyqa";

  # colors
  foreground = "#C6D0F5"; # text
  background = "#303446"; # base
  bright7 = "#A5ADCE";    # subtext 0

in {
  home-manager = {
    users.${name} = {
      services = {
        mako = {
          enable = true;
          defaultTimeout = 5000; # 5s
          font = "monospace 8";
          margin = "30";
          padding = "5";
          borderSize = 3;
          borderColor = bright7;
          backgroundColor = background;
          textColor = foreground;
        };
      };
    };
  };
}
