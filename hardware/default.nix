{
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot
    ./filesystem
    ./networking
    ./opengl
    ./platform
    ./processor
    ./sane
    ./swapdevices
  ];
}
