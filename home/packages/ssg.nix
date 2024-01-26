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
          hugo
          mdbook
          mdbook-linkcheck
        ];
      };
    };
  };
}
