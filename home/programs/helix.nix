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
