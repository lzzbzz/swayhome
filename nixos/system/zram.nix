{ ... }: {
  zramSwap = {
    enable = false;
    algorithm = "zstd";
    memoryPercent = 50;
  };
}
