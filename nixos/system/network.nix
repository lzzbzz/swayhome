{ ... }: let
  hostname = "nixos";
in {
  networking = {
    hostName = "${hostname}";
    networkmanager = {
      enable = false;
    };
    wireless = {
      enable = false;
      iwd = {
        ## connect with iwd.
        # iwctl device list
        # iwctl station DEVICE get-networks
        # iwctl station DEVICE connect <SSID>
        enable = true;
        settings = {
          Network = {
            EnableIPv6 = true;
            RoutePriorityOffset = 300;
          };
          Settings = {
            AutoConnect = true;
          };
        };
      };
    };
    ## Configure network proxy if necessary.
    # proxy = {
    #   default = "http://user:password@proxy:port/";
    #   noProxy = "127.0.0.1,localhost,internal.domain";
    # };
  };
}
