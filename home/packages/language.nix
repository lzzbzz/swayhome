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
        with pkgs.nodePackages; [
          # haskell-language-server # haskell # too much storage
          # sourcekit-lsp # swift & objective-c # too much storage
          ansible-language-server # ansible
          bash-language-server # bash
          clang # clangd
          clojure-lsp # clojure
          cmake-language-server # cmake
          cuelsp # cue
          dhall-lsp-server # dhall
          dot-language-server # dot
          elixir-ls # elixir
          elvish # elvish
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
          perlnavigator # perl
          purescript-language-server # purescript
          racket # racket
          regols # rego
          ruff-lsp # python
          rust-analyzer # rust
          slint-lsp # slint
          solc # solidity
          svelte-language-server # svelte
          taplo # toml
          terraform-ls # terraform
          texlab # latex
          typescript-language-server # typescript
          vala-language-server # vala
          yaml-language-server # yaml
          zls # zig
        ];
      };
    };
  };
}
