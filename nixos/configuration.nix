{ config, pkgs, ... }:
{
  #silent boot
  #  disabledModules = [ "system/boot/stage-2.nix" "system/boot/stage-1.nix" "system/etc/etc.nix" ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  imports =
    [
      #silent boot
      ./silent-boot/init.nix

      #hardware optimization
      ./hardware-optimization/init.nix

      #audio
      ./audio/init.nix

      #networking
      ./networking/networks.nix

      # Code 
      ./code/init.nix

      #Progrtams
      ./programs/init.nix

      # Hyprland
      ./hyprland/init.nix

    ];

  time.timeZone = "Europe/Bratislava";

  environment.sessionVariables = rec {
    XDG_CONFIG_HOME = "\${HOME}/.config";
    XCURSOR_SIZE = "35";
  };



  users.users.v = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ]; # Enable ‘sudo’ for the user.
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    tmux
    freshfetch
  ];

  #programs.mtr.enable = true;
  #programs.gnupg.agent = {
  #  enable = true;
  #  enableSSHSupport = true;
  #};

  #services.openssh.enable = true;
  services.printing.enable = true;

  system.stateVersion = "23.05";
}
