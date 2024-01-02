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
          babelfish
          bat
          clinfo
          direnv
          dmidecode
          duf
          efibootmgr
          exiftool
          fastfetch
          ffmpeg
          ghostscript
          git
          glib # gsettings
          glxinfo
          grim # screenshot functionality
          imagemagick
          inxi
          jq
          kanshi # dynamic display configuration tool
          lshw
          marksman
          mediainfo
          odt2txt
          pamixer # audio volume
          pandoc
          pcmanfm # file manager gtk
          scour
          scrcpy
          slurp # screenshot functionality
          swayidle # idle management daemon
          swaykbdd # per-window keyboard layout for sway
          swaylock # lockscreen sway
          translate-shell
          upterm
          ventoy
          vulkan-tools
          w3m
          wayland-utils
          wdisplays # configuring displays
          wf-recorder # screen recording
          wget
          wl-clipboard
          wmctrl # interact netwm x wm
          wvkbd # on-screen keyboard for wlroots
          xdg-utils # for opening default programs when clicking links
          xlsx2csv

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
