{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        ssh-agent = {
          enable = true;
        };
      };
    };
  };
}
