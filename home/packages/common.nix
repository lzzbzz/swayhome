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
          # base
          axel # console downloading program
          babelfish # convert bash to fish shell
          bat # alternative of cat
          bottom # process/system monitor
          catdoc # microsoft office to text converter
          clinfo # information about opencl platforms
          cpufetch # cpu fetching architecture tool
          direnv # shell extension that manages environment
          disfetch # distro fetching program
          dmidecode # reads information about system hardware
          duf # alternate du
          efibootmgr # efi boot manager
          exiftool # exif meta information
          fastfetch # show your current hardware
          ffmpeg # convert video
          fzf # command-line fuzzy finder
          ghostscript # convert pdf document
          glib # gsettings
          glow # markdown renderer
          glxinfo # test utilities for opengl
          grim # screenshot functionality
          hexyl # command-line hex viewer
          hut # cli tool for sourcehut
          imagemagick # convert image
          inxi # info for device specification
          jq # command-line json processor
          lshw # show your current hardware
          mediainfo # info for image file
          netlify-cli # cli tool for netlify
          odt2txt # convert odt to txt
          pamixer # audio volume
          pandoc # convert document
          pulsemixer # curses mixer
          pfetch # pretty system information tool
          poppler_utils # pdf rendering library
          ripgrep-all # more ripgrep
          rnm # bulk rename
          scour # compress svg
          scrcpy # mirroring device
          slurp # screenshot functionality
          swappy # snapshot editing tool
          swaykbdd # per-window keyboard layout for sway
          translate-shell # translate via google api
          tree # produce a depth indented directory listing
          upterm # remote console
          ventoy # cerate usb bootable
          vulkan-tools # khronos official vulkan tools and utilities
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

          # ssg
          hugo
          mdbook
          mdbook-linkcheck

          # data science
          gnuplot
          iredis
          litecli
          luigi
          mpi
          quarto

          # scala
          ammonite
          sbt
          scala
          scala-cli
          scalafmt

          # compiler
          clang
          clang-tools
          clazy
          cmake
          cppcheck
          gdb
          gnumake

          # lua
          luaformatter
          luajit
          z-lua

          # nix
          nixpkgs-fmt

          # root
          root

          # database
          dbeaver
          sqlitebrowser

          # media
          tenacity

          # internet
          tdesktop
          zulip

          # games
          mindustry-wayland
        ];
      };
    };
  };
}
