{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs.libsForQt5; [
          qt5ct
          kdenlive
          qt5.qtwayland
        ];
      };
    };
  };
}
