{
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        fish = {
          enable = true;
          interactiveShellInit = ''
            set fish_greeting
          '';
          plugins = with pkgs.fishPlugins; [
            { name = "forgit"; src = forgit; }
            { name = "git"; src = plugin-git; }
            { name = "grc"; src = grc; }
            { name = "humantime"; src = humantime-fish; }
            { name = "hydro"; src = hydro; }
            { name = "pisces"; src = pisces; }
            { name = "pure"; src = pure; }
            { name = "sponge"; src = sponge; }
            { name = "tide"; src = tide; }
          ];
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
            cv = "cava";
            ds = "du -sh";
            ht = "htop";
            lb = "lsblk -o name,fstype,fsavail,fsused,size,mountpoint";
            mk = "mkdir -pv";
            mv = "mv -v";
            nc = "ncmpcpp";
            rm = "rm -rfv";

            ns = "nix-search -dn";

            yt = "yt-dlp -f bestvideo+bestaudio";
            ym = "yt-dlp -f bestaudio -x --audio-format vorbis";

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

            nei = "nix-env -iA";
            neu = "nix-env --uninstall";
            nel = "nix-env --list-generations";
            ned = "nix-env --delete-generations old";

            dnei = "doas nix-env -iA";
            dneu = "doas nix-env --uninstall";
            dnel = "doas nix-env -p /nix/var/nix/profiles/system --list-generations";
            dned = "doas nix-env -p /nix/var/nix/profiles/system --delete-generations old";

            dncl = "doas nix-channel --list";
            dncu = "doas nix-channel --update";
            dnrd = "doas nixos-rebuild dry-build";
            dnrs = "doas nixos-rebuild switch";
            dnru = "doas nixos-rebuild switch --upgrade";
            dngc = "doas nix-store --gc";
            dngd = "doas nix-collect-garbage --delete-old";

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
