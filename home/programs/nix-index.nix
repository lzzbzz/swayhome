{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        nix-index = {
          enable = true;
          enableFishIntegration = true;
        };
      };
    };
  };
}
