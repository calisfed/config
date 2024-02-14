{ config, lib, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    vim
    wget
    neovim

    cmake
    gcc
    zig
    rustc
    cargo
    ripgrep
    fzf
  ];
}
