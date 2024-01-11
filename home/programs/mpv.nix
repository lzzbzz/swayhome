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
        mpv = {
          enable = true;
          config = {
            force-window = true;
            fullscreen = "yes";
            profile = "gpu-hq";
            ytdl-format = "bestvideo+bestaudio";
          };
        };
      };
    };
  };
}
