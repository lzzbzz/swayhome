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
        with pkgs.elmPackages;
        with pkgs.nodePackages;
        with pkgs.solargraph; [
          # haskell-language-server # haskell # too much storage
          # sourcekit-lsp # swift & objective-c # too much storage
          ansible-language-server # ansible
          bash-language-server # bash
          clang # clangd
          clojure-lsp # clojure
          cmake-language-server # cmake
          crystalline # cairo
          cuelsp # cue
          dhall-lsp-server # dhall
          dot-language-server # dot
          elixir-ls # elixir
          elm-language-server # elm
          elvish # elvish
          erlang-ls # erlang
          fortls # fortran
          fsautocomplete # fsharp
          gleam # gleam
          gopls # golang
          intelephense # php
          jsonnet-language-server # jsonnet
          julia # julia
          lean # lean
          lua-language-server # lua
          marksman # markdodwn
          metals # scala
          mint # mint
          nil # nix
          nimlsp # nim
          nls # nickel
          openscad-lsp # openscad
          perlnavigator # perl
          protobuf # protobuf
          purescript-language-server # purescript
          racket # racket
          regols # rego
          ruff-lsp # python
          rust-analyzer # rust
          slint-lsp # slint
          solargraph # ruby
          solc # solidity
          svelte-language-server # svelte
          swiProlog # prolog
          taplo # toml
          terraform-ls # terraform
          texlab # latex
          typescript-language-server # typescript
          vala-language-server # vala
          vhdl-ls # vhdl
          vls # vue
          yaml-language-server # yaml
          zls # zig
        ];
      };
    };
  };
}
