{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        kanshi = {
          enable = true;
          profiles = {
            undocked = {
              outputs = [
                {
                  criteria = "eDP-1";
                  scale = 1.0;
                }
              ];
            };
          };
        };
      };
    };
  };
}
