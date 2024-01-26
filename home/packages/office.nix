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
          libreoffice
          libreoffice-qt
          qownnotes
          zotero
        ];
      };
    };
  };
}
