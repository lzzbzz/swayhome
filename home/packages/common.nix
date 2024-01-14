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
          babelfish # convert bash to fish shell
          bat # alternative of cat
          bottom # process/system monitor
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
          ghostscript # convert pdf document
          glib # gsettings
          glow # markdown renderer
          glxinfo # test utilities for opengl
          grim # screenshot functionality
          hexyl # command-line hex viewer
          imagemagick # convert image
          inxi # info for device specification
          jq # command-line json processor
          lshw # show your current hardware
          mediainfo # info for image file
          odt2txt # convert odt to txt
          pamixer # audio volume
          pandoc # convert document
          pcmanfm # file manager gtk
          pfetch # pretty system information tool
          scour # compress svg
          scrcpy # mirroring device
          slurp # screenshot functionality
          swaykbdd # per-window keyboard layout for sway
          translate-shell # translate via google api
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
          xdg-utils # for opening default programs when clicking links
          xlsx2csv # convert xlsx to csv

          # archiver
          atool
          bzip2
          gzip
          libarchive
          lz4
          lzip
          lzo
          lzop
          p7zip
          rzip
          unzip
          xz
          zip
          zstd

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

          # theme
          qt5ct
          themechanger

          # database
          dbeaver
          sqlitebrowser

          # office
          libreoffice
          libreoffice-qt
          qownnotes
          zotero

          # graphic
          blender
          inkscape
          krita
          scribus
          synfigstudio

          # media
          tenacity

          # internet
          keepassxc
          tdesktop
          zulip

          # games
          mindustry-wayland
        ];
      };
    };
  };
}
