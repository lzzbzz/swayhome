{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      qt = {
        enable = true;
        platformTheme = "qtct";
      };
    };
  };
}
