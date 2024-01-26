{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs; [
          blender
          inkscape
          krita
          scribus
          synfigstudio
        ];
      };
    };
  };
}
