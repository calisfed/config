{ config, lib, utils, pkgs, ... }:
{
  imports = [
    #silent boot
    #    ./stage-2-silent.nix
    #    ./stage-1-silent.nix
    #    ./etc-silent.nix
    ./boot.nix
  ];
}
