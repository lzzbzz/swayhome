{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      fonts = {
        fontconfig = {
          enable = true;
        };
      };
    };
  };
}
