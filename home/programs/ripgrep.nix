{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        ripgrep = {
          enable = true;
          arguments = [
            "--max-columns-preview"
            "--colors=line:style:bold"
          ];
        };
      };
    };
  };
}
