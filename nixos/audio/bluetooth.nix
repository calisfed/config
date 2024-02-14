{ config, pkgs, ... }:
{

  hardware.bluetooth.enable = true;
  services.pipewire.wireplumber.enable = true;
}
