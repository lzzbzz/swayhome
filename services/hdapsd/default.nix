{
  config,
  lib,
  ...
}: {
  services = {
    hdapsd = {
      enable = false;
    };
  };
}
