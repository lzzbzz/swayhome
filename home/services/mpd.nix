{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        mpd = {
          enable = true;
          musicDirectory = "~/music";
        };
      };
    };
  };
}
