{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      services = {
        gnome-keyring = {
          enable = true;
          components = [ "ssh" ];
        };
      };
    };
  };
}
