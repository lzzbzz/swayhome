{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        fish = {
          enable = true;
          shellAbbrs = {
            a = "axel";
            b = "bat";
            d = "doas";
            g = "git";
            h = "hx";
            j = "joshuto";
            n = "nvim";
            z = "zellij";

            bb = "btm -b";
            cp = "cp -rfv";
            ht = "htop";
            lb = "lsblk -o name,fstype,fsavail,fsused,size,mountpoint";
            mv = "mv -v";
            nc = "ncmpcpp";
            rm = "rm -rfv";

            ns = "nix-search -ds";

            yt = "yt-dlp -f bestvideo+bestaudio --embed-thumbnail";
            ym = "yt-dlp -f bestaudio -x --audio-format vorbis --embed-thumbnail";

            sa = "systemctl --user start";
            so = "systemctl --user stop";
            sr = "systemctl --user restart";
            st = "systemctl --user status";

            dsa = "doas systemctl start";
            dso = "doas systemctl stop";
            dsr = "doas systemctl restart";
            dst = "doas systemctl status";

            qup = "quarto publish netlify --no-browser";
            quv = "quarto preview";
            qur = "quarto render";

            neq = "nix-env -qaP";
            nim = "nix-shell -p nix-info --run 'nix-info -m'";
            nei = "doas nix-env -iA";
            neu = "doas nix-env --uninstall";
            nel = "doas nix-env -p /nix/var/nix/profiles/system --list-generations";
            ned = "doas nix-env -p /nix/var/nix/profiles/system --delete-generations old";

            ncl = "doas nix-channel --list";
            ncu = "doas nix-channel --update";
            nrd = "doas nixos-rebuild dry-build";
            nrs = "doas nixos-rebuild switch";
            nru = "doas nixos-rebuild switch --upgrade";
            ngc = "doas nix-store --gc";
            ngd = "doas nix-collect-garbage -d";

            ga = "git add";
            gaa = "git add --all";

            gb = "git branch";
            gbl = "git blame -b -w";
            gbr = "git branch --remote";

            gcm = "git commit -S -m";
            gcam = "git commit S --amend";

            gcb = "git checkout -b";
            gck = "git checkout main";

            gcf = "git config --list";
            gcl = "git clone --recursive";
            gcln = "git clean -fd";
            gcp = "git cherry-pick";

            gd = "git diff";
            gdca = "git diff --cached";

            gfs = "git fetch sh";
            gfg = "git fetch gh";
            gfl = "git fetch gl";
            gfa = "git fetch --all --prune";

            gignore = "git update-index --assume-unchanged";

            gls = "git log --stat";
            glsp = "git log --stat -p";
            glg = "git log --graph";
            glo = "git log --decorate --oneline";

            gm = "git merge";
            gmsm = "git merge sh/main";
            gmgm = "git merge gh/main";
            gmlm = "git merge gl/main";
            gmt = "git mergetool --no-prompt";

            gpsm = "git push -u sh main";
            gpgm = "git push -u gh main";
            gplm = "git push -u gl main";

            gr = "git remote";
            gra = "git remote add";
            grh = "git reset HEAD";
            grhh = "git reset HEAD --hard";

            gs = "git status -sbu";
            gsps = "git show --pretty=short --show-signature";
            gsts = "git stash show --text";
            gsu = "git submodule update";

            gts = "git tag -s";
            gta = "git tag -a";

            gur = "git pull --rebase";
            gusm = "git pull sh main";
            gugm = "git pull gh main";
            gulm = "git pull gl main";
          };
        };
      };
    };
  };
}
