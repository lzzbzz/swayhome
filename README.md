# NixOS + Sway + Home Manager

Configuration of Nixos operating system with Sway DE (disk
encrypted) for Hobbyist.

![image](image/grim_1.png)
![image](image/grim_2.png)

## Installation

- Cloning

```sh
git clone git@github.com:hervyqa/swayhome.git
cd swayhome
```

- Configuration

## Symlink to `/etc`

```sh
sudo mv /etc/configuration.nix /etc/configuration.nix.backup
sudo ln -s $PWD/configuration.nix /etc/nixos/
```

- Home manager

```sh
sudo ix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --update
```

- Change variable

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
version = "24.05";
```

## Build configuration

```sh
sudo nixos-rebuild switch
```

## License

MIT License

Copyright (c) 2024 Hervy Qurrotul Ainur Rozi
