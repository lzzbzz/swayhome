{
  config,
  pkgs,
  ...
}:
let
  name = "hervyqa";
  # colors
  bg-color = "#3daee9";
  inactive-bg-color = "#232629";
  text-color = "#fcfcfc";
  inactive-text-color = "#7f8c8d";
  urgent-bg-color = "#3daee9";
  indicator = "#3daee9";
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
          borderSize = 5;
          borderColor = bg-color;
          backgroundColor = inactive-bg-color;
          textColor = text-color;
        };
      };
    };
  };
}
