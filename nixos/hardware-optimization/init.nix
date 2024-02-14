{ config, pkgs, ... }:
{
  imports = [
    ./framework-specific.nix
    ./hardware-configuration.nix
    ./video-acceleration.nix
    ./ssd.nix
    ./nvidia.nix
  ];

}
