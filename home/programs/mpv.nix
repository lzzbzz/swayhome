{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        mpv = {
          enable = true;
          config = {
            force-window = "yes";
            fullscreen = "false";
            profile = "gpu-hq";
            ytdl-format = "bestvideo+bestaudio";
          };
        };
      };
    };
  };
}
