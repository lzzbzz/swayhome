{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        wofi = {
          enable = true;
          settings = {
            location = "bottom-right";
            allow_markup = true;
            width = 250;
          };
        };
      };
    };
  };
}
