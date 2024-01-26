{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        eza = {
          enable = true;
          enableAliases = true;
          extraOptions = [ "--group-directories-first"  "--header" ];
          git = true;
          icons = false;
        };
      };
    };
  };
}
