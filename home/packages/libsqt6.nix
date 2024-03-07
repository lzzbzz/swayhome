{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs.qt6Packages; [
          qt6ct
          qt6gtk2
          qtwayland
          qtstyleplugin-kvantum
        ];
      };
    };
  };
}
