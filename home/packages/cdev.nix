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
          clang-tools
          clazy
          cmake
          cppcheck
          gdb
          gnumake
        ];
      };
    };
  };
}
