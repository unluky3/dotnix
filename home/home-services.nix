{ config, pkgs, ... }:
{
  services = {
    swww.enable = false;
    cliphist.enable = true;
    playerctld.enable = true;
  };
}
