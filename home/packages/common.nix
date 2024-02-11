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
          bc # gnu software calculator
          catdoc # microsoft office to text converter
          catppuccin # soothing pastel themes
          catppuccin-kde # soothing pastel theme for kde
          catppuccin-kvantum # soothing pastel theme for kvantum
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
          hugo # modern static website engine
          hut # cli tool for sourcehut
          imagemagick # convert image
          inxi # info for device specification
          libva-utils # a collection of utilities and examples for va-api
          lshw # show your current hardware
          mediainfo # info for image file
          neo # simulates the digital rain from the matrix
          netlify-cli # cli tool for netlify
          nix-health # check the health of your nix setup
          nix-search-cli # cli for searching package
          odt2txt # convert odt to txt
          optipng # a png optimizer
          pamixer # audio volume
          pfetch # pretty system information tool
          poppler_utils # pdf rendering library
          psmisc # small useful utilities that use the proc filesystem
          pulsemixer # curses mixer
          rnm # bulk rename
          rtorrent # ncurses client for libtorrent
          scour # compress svg
          scrcpy # mirroring device
          slurp # screenshot functionality
          swaybg #wallpaper tool for wayland compositors
          swaykbdd # per-window keyboard layout for sway
          tgpt # chatgpt in terminal without needing api key
          toipe # trusty terminal typing tester
          tree # produce a depth indented directory listing
          ttyper # terminal-based typing test
          typioca # cozy typing speed tester in terminal
          upterm # remote console
          ventoy # cerate usb bootable
          vulkan-tools # khronos official vulkan tools and utilities
          vulnix #  nixos vulnerability scanner
          w3m # image viewer
          wayland-utils # wayland utilities (wayland-info)
          wdisplays # configuring displays
          wget # cli downloader
          wl-clip-persist # keep wayland clipboard even after programs close
          wl-clipboard # command-line copy/paste utilities
          wl-gammactl # contrast, brightness, and gamma adjustments
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
