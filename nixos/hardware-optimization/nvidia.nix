{ config, lib, pkgs, modulesPath, ... }:
{

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    prime.sync.enable = true;
    prime.amdgpuBusId = "PCI:0:7:0";
    prime.nvidiaBusId = "PCI:0:1:0";
  };
}
