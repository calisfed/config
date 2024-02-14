{ config, pkgs, ... }:
{


  environment.systemPackages = with pkgs; [
    libva
    libva-utils
    vaapiVdpau
    mesa
    vdpauinfo
    glxinfo
    driversi686Linux.vaapiVdpau
    driversi686Linux.vdpauinfo
    driversi686Linux.mesa
    driversi686Linux.glxinfo
    libdrm
  ];
}
