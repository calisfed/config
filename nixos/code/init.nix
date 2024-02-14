{ config, pkgs, ... }:
{
  imports = [
    ./git.nix
    ./programs.nix

  ];
}
