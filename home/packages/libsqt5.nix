{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs;
        with pkgs.libsForQt5;
        with pkgs.libsForQt5.qt5; [
          kdenlive
          qt5ct
          qtwayland
        ];
      };
    };
  };
}
