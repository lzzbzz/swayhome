{ ... }: let
  name = "hervyqa";
  email = "hervyqa@proton.me";
  fullname = "Hervy Qurrotul Ainur Rozi";
  # gpg --list-secret-keys --keyid-format=long
  signingkey = "C10684E03E228DC0";
in {
  home-manager = {
    users.${name} = {
      programs = {
        git = {
          enable = true;
          userEmail = "${email}";
          userName = "${fullname}";
          signing = {
            signByDefault = true;
            key = "${signingkey}";
          };
          lfs = {
            enable = true;
          };
          ignores = [
            "*~"
            "*.swp"
          ];
          extraConfig = {
            init = {
              defaultBranch = "main";
            };
            pull = {
              rebase = true;
            };
            core = {
              whitespace = "trailing-space,space-before-tab"; 
            };
            url = {
              "git@git.sr.ht:" = {
                insteadOf = [
                  "https://git.sr.ht/"
                ];
              };
              "git@github.com:" = {
                insteadOf = [
                  "https://github.com/"
                ];
              };
              "git@gitlab.com:" = {
                insteadOf = [
                  "https://gitlab.com/"
                ];
              };
            };
          };
        };
      };
    };
  };
}
