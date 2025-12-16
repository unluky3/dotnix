{ config, pkgs, inputs, ... }:
{
  programs = {
    gpu-screen-recorder.enable = true;
    hyprland.enable = true;
  };
  services = {
    sysc-greet = {
      enable = true;
      compositor = "hyprland";
    };
  };
}
