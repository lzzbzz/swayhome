{
  pkgs,
  ...
}: {
  services = {
    printing = {
      enable = true;
      stateless = true;
      webInterface = false;
      drivers = with pkgs; [
        epson-escpr
        epson-escpr2
        foomatic-db
        gutenprint
        hplip
        splix
      ];
    };
    system-config-printer = {
      enable = true;
    };
  };
}
