{ pkgs, ... }:
{
  programs = {
    
    vim.enable = true;
    fish.enable   = true;
    zsh.enable    = true;
    git.enable    = true;

  };

  users.defaultUserShell = pkgs.zsh;
  users.users.unlukii.shell = pkgs.fish;

}
