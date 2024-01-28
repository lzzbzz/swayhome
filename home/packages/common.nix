{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs; [
          axel # console downloading program
          babelfish # convert bash to fish shell
          bc # gnu software calculator
          catdoc # microsoft office to text converter
          clinfo # information about opencl platforms
          cpufetch # cpu fetching architecture tool
          disfetch # distro fetching program
          dmidecode # reads information about system hardware
          duf # alternate du
          efibootmgr # efi boot manager
          exiftool # exif meta information
          fastfetch # show your current hardware
          ffmpeg # convert video
          ghostscript # convert pdf document
          glib # gsettings
          glow # markdown renderer
          glxinfo # test utilities for opengl
          grim # screenshot functionality
          hexyl # command-line hex viewer
          hut # cli tool for sourcehut
          imagemagick # convert image
          inxi # info for device specification
          lshw # show your current hardware
          mediainfo # info for image file
          netlify-cli # cli tool for netlify
          nix-health # check the health of your nix setup
          nix-search-cli # cli for searching package
          odt2txt # convert odt to txt
          pamixer # audio volume
          pfetch # pretty system information tool
          poppler_utils # pdf rendering library
          pulsemixer # curses mixer
          rnm # bulk rename
          scour # compress svg
          scrcpy # mirroring device
          slurp # screenshot functionality
          swappy # snapshot editing tool
          swaykbdd # per-window keyboard layout for sway
          tree # produce a depth indented directory listing
          upterm # remote console
          ventoy # cerate usb bootable
          vulkan-tools # khronos official vulkan tools and utilities
          vulnix #  nixos vulnerability scanner
          w3m # image viewer
          wayland-utils # wayland utilities (wayland-info)
          wdisplays # configuring displays
          wf-recorder # screen recording
          wget # cli downloader
          wl-clipboard # copy for wayland
          wl-mirror # mirrors an output onto a wayland surface
          wlprop # xprop clone for wlroots based compositors
          wmctrl # interact netwm x wm
          wvkbd # on-screen keyboard for wlroots
          xdg-user-dirs # manage well known user directories
          xdg-utils # for opening default programs when clicking links
          xlsx2csv # convert xlsx to csv
        ];
      };
    };
  };
}
