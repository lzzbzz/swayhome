{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  services = {
   greetd = {
      enable = false;
      settings =  {
        default_session = {
          command = "${pkgs.greetd.greetd}/bin/agreety --cmd sway";
          user = "${name}";
        };
      };
    };
  };
}
