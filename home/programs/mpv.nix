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
            cache-default = 4000000;
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
