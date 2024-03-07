{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        obs-studio = {
          enable = false;
          plugins = with pkgs.obs-studio-plugins; [
            wlrobs
            obs-pipewire-audio-capture
          ];
        };
      };
    };
  };
}
