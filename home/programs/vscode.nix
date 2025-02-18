{
  pkgs,
  ...
}: let
  name = "lzbz";
in {
  home-manager = {
    users.${name} = {
      programs = {
        vscode = {
          enable = false;
          package = pkgs.vscode;
          extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            elixir-lsp.vscode-elixir-ls
            esbenp.prettier-vscode
            llvm-vs-code-extensions.vscode-clangd
            ms-pyright.pyright
            ms-python.isort
            ms-python.python
            ms-toolsai.jupyter
            ms-toolsai.jupyter-keymap
            ms-toolsai.jupyter-renderers
            ms-toolsai.vscode-jupyter-cell-tags
            ms-toolsai.vscode-jupyter-slideshow
            ms-vscode-remote.remote-ssh
            ms-vsliveshare.vsliveshare
            naumovs.color-highlight
            rust-lang.rust-analyzer
            scala-lang.scala
            scalameta.metals
            shardulm94.trailing-spaces
            sumneko.lua
            vscodevim.vim
            xaver.clang-format
          ];
          userSettings = {
            "editor.codeActionsOnSave" = { "source.fixAll" = true; };
            "editor.codeLens" = false;
            "editor.find.cursorMoveOnType" = false;
            "editor.fontFamily" = "'monospace', monospace";
            "editor.fontSize" = 12;
            "editor.formatOnSave" = true;
            "editor.minimap.enabled" = false;
            "editor.multiCursorModifier" = "ctrlCmd";
            "editor.renderFinalNewline" = false;
            "editor.renderWhitespace" = "all";
            "editor.scrollBeyondLastLine" = false;
            "editor.tabSize" = 2;
            "editor.wordWrap" = "wordWrapColumn";
            "editor.wordWrapColumn" = 80;
            "explorer.confirmDelete" = false;
            "explorer.confirmDragAndDrop" = false;
            "extensions.autoCheckUpdates" = false;
            "extensions.ignoreRecommendations" = true;
            "files.insertFinalNewline" = true;
            "files.trimFinalNewlines" = true;
            "files.trimTrailingWhitespace" = true;
            "git.enableCommitSigning" = true;
            "javascript.updateImportsOnFileMove.enabled" = "always";
            "liveshare.showVerboseNotifications" = false;
            "metals.suggestLatestUpgrade" = false;
            "remote.SSH.useLocalServer" = false;
            "telemetry.telemetryLevel" = "off";
            "typescript.updateImportsOnFileMove.enabled" = "always";
            "update.mode" = "none";
            "vim.sneak" = true;
            "vim.useSystemClipboard" = true;
            "window.menuBarVisibility" = "toggle";
            "window.zoomLevel" = 0.1;
            "workbench.activityBar.visible" = false;
            "workbench.editor.enablePreview" = false;
            "workbench.editor.enablePreviewFromQuickOpen" = false;
            "workbench.startupEditor" = "none";
            "[javascript]" = {
              "editor.defaultFormatter" = "esbenp.prettier-vscode";
            };
            "[json]" = {
              "editor.defaultFormatter" = "esbenp.prettier-vscode";
            };
            "[jsonc]" = {
              "editor.defaultFormatter" = "esbenp.prettier-vscode";
            };
            "[typescript]" = {
              "editor.defaultFormatter" = "esbenp.prettier-vscode";
            };
            "[typescriptreact]" = {
              "editor.defaultFormatter" = "esbenp.prettier-vscode";
            };
          };
        };
      };
    };
  };
}
