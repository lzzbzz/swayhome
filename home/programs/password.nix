{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        password-store = {
          enable = true;
          package = pkgs.pass-wayland.withExtensions (exts: [
            exts.pass-otp ]
          );
          settings = {
            PASSWORD_STORE_DIR = "$HOME/.pass";
          };
        };
      };
    };
  };
}
