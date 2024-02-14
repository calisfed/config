{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    nordzy-cursor-theme
    nordzy-icon-theme
  ];
}
