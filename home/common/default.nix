{
  config,
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
          autotiling # auto tiling for i3/sway
          babelfish # convert bash to fish shell
          bat # alternative of cat
          clinfo
          direnv
          dmidecode
          duf # alternate du
          efibootmgr
          exiftool
          fastfetch # show your current hardware
          ffmpeg # convert video
          ghostscript # convert pdf document
          glib # gsettings
          glxinfo
          grim # screenshot functionality
          imagemagick # convert image
          inxi # info for device specification
          jq
          lshw # show your current hardware
          marksman
          mediainfo # info for image file
          odt2txt # convert odt to txt
          pamixer # audio volume
          pandoc # convert document
          pcmanfm # file manager gtk
          qimgv # qt image viewer
          scour # compress svg
          scrcpy # mirroring device
          slurp # screenshot functionality
          swaykbdd # per-window keyboard layout for sway
          translate-shell # translate via google api
          upterm # remote console
          ventoy # cerate usb bootable
          vulkan-tools
          w3m # image viewer
          wayland-utils
          wdisplays # configuring displays
          wf-recorder # screen recording
          wget # cli downloader
          wl-clipboard # copy for wayland
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

          # julia
          julia

          # scala
          ammonite
          metals
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
          luajit
          luaformatter
          z-lua

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
          obs-studio
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
