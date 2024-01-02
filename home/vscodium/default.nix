{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        vscode = {
          enable = true;
          package = pkgs.vscodium;
          extensions = with pkgs.vscode-extensions; [
            naumovs.color-highlight
            scala-lang.scala
            scalameta.metals
            shardulm94.trailing-spaces
            sumneko.lua
          ];
        };
      };
    };
  };
}
