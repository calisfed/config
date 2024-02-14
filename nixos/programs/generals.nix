{ config, pkgs, ... }:
{
  services.xserver.enable = true;

  environment.systemPackages = with pkgs; [
    #Browser
    firefox
    qutebrowser

    #CLI program
    acpi #battery status
    pulsemixer #audio manager
    pavucontrol
    imv #image viewer
    nix-prefetch-github #get hash and head from github repo

    #Color palette
    eyedropper

    #App launcher
    rofi-wayland

    #Video viewer
    haruna

    #Video editor
    shotcut

    #Image editor
    pinta
    inkscape

    #Messaging app
    signal-desktop


    #Font
    jetbrains-mono
    nerdfonts
    fira-code-nerdfont

    gtk2
    gtk3
    gtk4
    lxappearance
  ];

}
