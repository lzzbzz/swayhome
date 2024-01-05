{
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot.nix
    ./filesystem.nix
    ./networking.nix
    ./opengl.nix
    ./platform.nix
    ./processor.nix
    ./sane.nix
    ./swapdevices.nix
  ];
}
