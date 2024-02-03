{ ... }: let
  name = "hervyqa";

  # colors
  foreground = "#C6D0F5"; # text
  background = "#303446"; # base
  regular4 = "#8CAAEE";   # blue

in {
  home-manager = {
    users.${name} = {
      services = {
        mako = {
          enable = true;
          defaultTimeout = 10000; # 5s
          font = "monospace 8";
          margin = "30";
          padding = "5";
          borderSize = 3;
          borderColor = regular4;
          backgroundColor = background;
          textColor = foreground;
        };
      };
    };
  };
}
