{ ... }: {
  networking = {
    firewall = {
      enable = true;
      allowPing = true;
      allowedTCPPorts = [
        # syncthing
        8384
        22000
      ];
      allowedUDPPorts = [
        22000
        21027
      ];
    };
  };
}
