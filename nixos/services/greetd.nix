{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  services = {
   greetd = {
      enable = true;
      settings = rec {
        initial_session = {
          command = "${pkgs.sway}/bin/sway";
          user = "${name}";
        };
        default_session = initial_session;
      };
    };
  };
}
