{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = with pkgs; [
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
