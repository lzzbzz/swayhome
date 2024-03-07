{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs; [
          luaformatter
          luajit
          z-lua
        ];
      };
    };
  };
}
