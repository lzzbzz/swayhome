{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs;
        with libsForQt5; [
        (texlive.combine { inherit (texlive)
          amsmath
          capt-of
          dvipng
          dvisvgm
          framed
          hyperref
          ifmtarg
          paralist
          scheme-basic
          titlesec
          ulem
          wrapfig
          xifthen;
        })
        texstudio
        ];
      };
    };
  };
}
