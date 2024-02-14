{ config, pkgs, ... }:
{
  imports = [

    ./generals.nix

    ./zsh.nix

    ./fonts.nix

    ./steam.nix

    ./utils.nix

    ./vaapi.nix

    ./themes.nix

    ./thunar.nix
  ];
}

