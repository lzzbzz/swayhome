{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      services = {
        gpg-agent = {
          enable = true;
          enableFishIntegration = true;
          enableSshSupport = true;
        };
      };
    };
  };
}
