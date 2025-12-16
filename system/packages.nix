{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lf
    fzf
  ];
}
