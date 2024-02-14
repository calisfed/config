{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    config = {
      init = {
        defaultBranch = "main";
        userName = "calisfed";
        userEmail = "cstory1996@gmail.com";
      };
    };
  };
}
