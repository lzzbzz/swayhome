{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        helix = {
          enable = true;
          defaultEditor = true;
          settings = {
            theme = "${name}";

            editor = {
              bufferline = "always";
              cursorline = true;
              cursorcolumn = true;
              line-number = "relative";
              rulers = [80];
              true-color = true;

              indent-guides = {
                render = true;
                character = "┊";
                skip-levels = 0;
              };

              lsp = {
                display-messages = true;
              };

              whitespace.render = {
                space = "none";
                tab = "all";
                newline = "none";
              };
            };

            keys = {
              normal = {
                C-w = ":w";
                C-q = ":q";
              };
              insert = {
                up = "no_op";
                down = "no_op";
                left = "no_op";
                right = "no_op";
                pageup = "no_op";
                pagedown = "no_op";
                home = "no_op";
                end = "no_op";
              };
            };
          };

          languages = {
            language-server = {
              ansible-language-server = with pkgs; {
                command = "${ansible-language-server}/bin/ansible-language-server";
              };
              bash-language-server = with pkgs.nodePackages; {
                command = "${bash-language-server}/bin/bash-language-server";
                args = [ "start" ];
              };
              clangd = with pkgs; {
                command = "${clang}/bin/clang";
              };
              cmake-language-server = with pkgs; {
                command = "${cmake-language-server}/bin/cmake-language-server";
              };
              clojure-lsp = with pkgs; {
                command = "${clojure-lsp}/bin/clojure-lsp";
              };
              cuelsp = with pkgs; {
                command = "${cuelsp}/bin/cuelsp";
              };
              dhall-lsp-server = with pkgs; {
                command = "${dhall-lsp-server}/bin/dhall-lsp-server";
              };
              dot-language-server = with pkgs; {
                command = "${dot-language-server}/bin/dot-language-server";
              };
              elixir-ls = with pkgs; {
                command = "${elixir-ls}/bin/elixir-ls";
              };
              elvish = with pkgs; {
                command = "${elvish}/bin/elvish";
              };
              gleam = with pkgs; {
                command = "${gleam}/bin/gleam";
              };
              gopls = with pkgs; {
                command = "${gopls}/bin/gopls";
              };
              intelephense = with pkgs.nodePackages; {
                command = "${intelephense}/bin/intelephense";
              };
              jsonnet-language-server = with pkgs; {
                command = "${jsonnet-language-server}/bin/jsonnet-language-server";
              };
              julia = with pkgs; {
                command = "${julia}/bin/julia";
              };
              lean = with pkgs; {
                command = "${lean}/bin/lean";
              };
              lua-language-server = with pkgs; {
                command = "${lua-language-server}/bin/lua-language-server";
              };
              marksman = with pkgs; {
                command = "${marksman}/bin/marksman";
              };
              metals = with pkgs; {
                command = "${metals}/bin/metals";
              };
              mint = with pkgs; {
                command = "${mint}/bin/mint";
              };
              nil = with pkgs; {
                command = "${nil}/bin/nil";
              };
              nimlsp = with pkgs; {
                command = "${nimlsp}/bin/nimlsp";
              };
              nls = with pkgs; {
                command = "${nls}/bin/nls";
              };
              perlnavigator = with pkgs; {
                command = "${perlnavigator}/bin/perlnavigator";
              };
              purescript-language-server = with pkgs.nodePackages; {
                command = "${purescript-language-server}/bin/purescript-language-server";
              };
              pylsp = with pkgs.python3Packages; {
                command = "${python}/bin/pylsp";
              };
              R = with pkgs; {
                command = "${R}/bin/R";
              };
              racket = with pkgs; {
                command = "${racket}/bin/racket";
              };
              regols = with pkgs; {
                command = "${regols}/bin/regols";
              };
              ruff-lsp = with pkgs; {
                command = "${ruff-lsp}/bin/ruff-lsp";
              };
              rust-analyzer = with pkgs; {
                command = "${rust-analyzer}/bin/rust-analyzer";
              };
              slint-lsp = with pkgs; {
                command = "${slint-lsp}/bin/slint-lsp";
              };
              solc = with pkgs; {
                command = "${solc}/bin/solc";
              };
              svelte-language-server = with pkgs.nodePackages; {
                command = "${svelte-language-server}/bin/svelteserver";
              };
              taplo = with pkgs; {
                command = "${taplo}/bin/taplo";
              };
              terraform-ls = with pkgs; {
                command = "${terraform-ls}/bin/terraform-ls";
              };
              texlab = with pkgs; {
                command = "${texlab}/bin/texlab";
              };
              typescript-language-server = with pkgs.nodePackages; {
                command = "${typescript-language-server}/bin/typescript-language-server";
                args = [ "--stdio" "--tsserver-path=${typescript}/lib/node_modules/typescript/lib" ];
              };
              vala-language-server = with pkgs; {
                command = "${vala-language-server}/bin/vala-language-server";
              };
              yaml-language-server = with pkgs; {
                command = "${yaml-language-server}/bin/yaml-language-server";
              };
              zls = with pkgs; {
                command = "${zls}/bin/zls";
              };
            };
            language = [
              {
                name = "rust";
                auto-format = false;
              }
            ];
          };

          themes = {
            ${name} = {
              "ui.background" = {fg = "white";};
              "ui.background.separator" = {fg = "gray";};
              "ui.menu" = {fg = "white";};
              "ui.menu.selected" = {modifiers = ["reversed"];};
              "ui.menu.scroll" = {fg = "light-gray";};
              "ui.linenr" = {fg = "light-gray";};
              "ui.linenr.selected" = {
                fg = "white";
                modifiers = ["bold"];
              };
              "ui.popup" = {fg = "white";};
              "ui.window" = {fg = "white";};
              "ui.selection" = {bg = "gray";};
              "comment" = "gray";
              "ui.statusline" = {fg = "white";};
              "ui.statusline.inactive" = {fg = "gray";};
              "ui.statusline.normal" = {
                fg = "black";
                bg = "blue";
              };
              "ui.statusline.insert" = {
                fg = "black";
                bg = "green";
              };
              "ui.statusline.select" = {
                fg = "black";
                bg = "magenta";
              };
              "ui.help" = {fg = "light-gray";};
              "ui.cursor" = {modifiers = ["reversed"];};
              "ui.cursor.match" = {
                fg = "light-yellow";
                underline = {
                  color = "light-yellow";
                  style = "line";
                };
              };
              "ui.cursor.primary" = {modifiers = ["reversed" "slow_blink"];};
              "ui.cursor.secondary" = {modifiers = ["reversed"];};
              "ui.virtual.ruler" = {bg = "gray";};
              "ui.virtual.whitespace" = "gray";
              "ui.virtual.indent-guide" = "gray";

              "variable" = "light-red";
              "constant.numeric" = "yellow";
              "constant" = "yellow";
              "attribute" = "yellow";
              "type" = "light-yellow";
              "string" = "light-green";
              "variable.other.member" = "green";
              "constant.character.escape" = "light-cyan";
              "function" = "light-blue";
              "constructor" = "light-blue";
              "special" = "light-blue";
              "keyword" = "light-magenta";
              "label" = "light-magenta";
              "namespace" = "light-magenta";

              "markup.heading" = "light-blue";
              "markup.list" = "light-red";
              "markup.bold" = {
                fg = "light-yellow";
                modifiers = ["bold"];
              };
              "markup.italic" = {
                fg = "light-magenta";
                modifiers = ["italic"];
              };
              "markup.strikethrough" = {modifiers = ["crossed_out"];};
              "markup.link.url" = {
                fg = "yellow";
                underline = {
                  color = "yellow";
                  style = "line";
                };
              };
              "markup.link.text" = "light-red";
              "markup.quote" = "light-cyan";
              "markup.raw" = "green";
              "markup.normal" = {fg = "blue";};
              "markup.insert" = {fg = "green";};
              "markup.select" = {fg = "magenta";};

              "diff.plus" = "light-green";
              "diff.delta" = "light-blue";
              "diff.delta.moved" = "blue";
              "diff.minus" = "light-red";

              "ui.gutter" = "gray";
              "info" = "light-blue";
              "hint" = "light-gray";
              "debug" = "light-gray";
              "warning" = "light-yellow";
              "error" = "light-red";

              "diagnostic.info" = {
                underline = {
                  color = "light-blue";
                  style = "dotted";
                };
              };
              "diagnostic.hint" = {
                underline = {
                  color = "light-gray";
                  style = "double_line";
                };
              };
              "diagnostic.debug" = {
                underline = {
                  color = "light-gray";
                  style = "dashed";
                };
              };
              "diagnostic.warning" = {
                underline = {
                  color = "light-yellow";
                  style = "curl";
                };
              };
              "diagnostic.error" = {
                underline = {
                  color = "light-red";
                  style = "curl";
                };
              };
            };
          };
        };
      };
    };
  };
}
