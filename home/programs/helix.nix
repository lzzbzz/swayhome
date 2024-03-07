{ ... }: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        helix = {
          enable = true;
          defaultEditor = true;
          settings = {
            theme = "catppuccin_frappe";

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

              soft-wrap = {
                enable = false;
                max-wrap = 25;
                max-indent-retain = 0;
              };

              whitespace.render = {
                space = "all";
                tab = "all";
                newline = "none";
              };
            };

            keys = {
              normal = {
                space = {
                  W = ":toggle-option soft-wrap.enable";
                };
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
            language = [
              {
                name = "python";
                language-servers = [ "pyright" "ruff" "pylsp" ];
                auto-format = true;
                formatter = {
                  command = "black";
                  args = [ "--line-length"  "88"  "--quiet"  "-"];
                };
              }
            ];
            language-server = {
              ruff = {
                command = "ruff-lsp";
                config = {
                  settings = {
                    args = ["--ignore" "E501"];
                  };
                };
              };
              pyright = {
                config = {
                  python = {
                    analysis = {
                      typeCheckingMode = "basic";
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
