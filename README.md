# NixOS + Sway + Home Manager

Configuration of Nixos operating system with Sway DE (disk
encrypted).

![image](image/grim_1.png)

Compatible with GTK & QT Themes (breeze-dark) or other themes.

![image](image/grim_2.png)

Minimalist Waybar.

![image](image/grim_3.png)

## List of apps

| Category | Name |
| :--- | :--- |
| Window Manager | sway |
| Bar | Waybar |
| Audio player | ncmpcpp |
| Browser | qutebrowser |
| File manager | joshuto |
| Image viewer | imv |
| Menu | dmenu |
| Notification | mako |
| PDF viewer | zathura |
| Shell | fish |
| Terminal | foot |
| Text editor | helix, neovim |
| Video player | mpv |
| Backlight | swayosd |
| Volume control | swayosd |
| Fonts | monospace 8 |
| GTK Theme | breeze-dark |
| QT Theme | breeze-dark |

## Installation

1. Cloning

```sh
git clone git@github.com:hervyqa/swayhome.git
cd swayhome
```

2. Configuration

```sh
sudo mv /etc/configuration.nix /etc/configuration.nix.backup
sudo ln -s $PWD/configuration.nix /etc/nixos/
```

3. Home manager

I am using stable release version `23.11`, home-manager is also using the same
version. Make sure the system and home-manager also use the same version.

```sh
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
sudo nix-channel --update
```

If using a different version, please replace `stateVersion` variables from:
* nixos = `nixos/system/system/default.nix`.
* home-manager = `home/default.nix`.

4. Change variable

```plain
name = "hervyqa";
fullname = "Hervy Qurrotul Ainur Rozi";
email = "hervyqa@proton.me";
timezone = "Asia/Jakarta";
defaultlocale = "en_US.UTF-8";
extralocale = "id_ID.UTF-8";
layout = "us";
gpgkey = "C10684E03E228DC0";
hostname = "nixos";
version = "23.11";
```

## How to build

This dotfile is installed with the nixos module.
There is no need to run `home-manager switch`
because the system and user configuration are built together.

```sh
sudo nixos-rebuild switch
```

For next build, i prefer using `doas` as an alternative to `sudo`.

```sh
doas nixos-rebuild switch

```

Or using `nrs` from fish abbreviation.
More info: `home/programs/fish.nix`

```sh
nrs
```

## License

MIT License

Copyright (c) 2024 Hervy Qurrotul Ainur Rozi
