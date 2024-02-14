{ ... }: let
  name = "hervyqa";

  # colors
  foreground = "#C6D0F5"; # text
  background = "#303446"; # base
  regular0 = "#414559";   # surface 0
  regular4 = "#8CAAEE";   # blue

in {
  home-manager = {
    users.${name} = {
      services = {
        mako = {
          enable = true;
          backgroundColor = background;
          borderColor = regular4;
          borderSize = 3;
          defaultTimeout = 10000; # 5s
          font = "Fira Code 8";
          margin = "30";
          padding = "5";
          progressColor = "over ${regular0}";
          textColor = foreground;
        };
      };
    };
  };
}
