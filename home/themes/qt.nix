{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      qt = {
        enable = true;
        platformTheme = "qtct";
        style = {
          name = "kvantum";
        };
      };
    };
  };
}
