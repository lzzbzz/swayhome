{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs.libsForQt5;
        with pkgs.libsForQt5.qt5; [
          qt5ct
          qtstyleplugins
          qtwayland
          qtstyleplugin-kvantum
        ];
      };
    };
  };
}
