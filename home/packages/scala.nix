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
          ammonite
          sbt
          scala
          scala-cli
          scalafmt
        ];
      };
    };
  };
}
