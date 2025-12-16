{ inputs, config, pkgs, ... }:
{
  imports = [
    ./hypr/hyprland.nix
    ./env-vars.nix
    ./caelestia/caelestia.nix
  ];
}
