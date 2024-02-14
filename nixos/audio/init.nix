{ config, pkgs, ... }:
{
  imports = [
    ./general.nix
    ./bluetooth.nix
  ];
}
