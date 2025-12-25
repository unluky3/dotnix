{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./nix.nix
    ./shell.nix
    ./programs.nix
    ./hardware.nix
    ./boot.nix
    ./networking.nix
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking = {
    hostName = "unlukii_nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Kyiv";

  i18n = {

    defaultLocale = "en_US.UTF-8";

    extraLocaleSettings = {
      LC_ADDRESS = "uk_UA.UTF-8";
      LC_IDENTIFICATION = "uk_UA.UTF-8";
      LC_MEASUREMENT = "uk_UA.UTF-8";
      LC_MONETARY = "uk_UA.UTF-8";
      LC_NAME = "uk_UA.UTF-8";
      LC_NUMERIC = "uk_UA.UTF-8";
      LC_PAPER = "uk_UA.UTF-8";
      LC_TELEPHONE = "uk_UA.UTF-8";
      LC_TIME = "uk_UA.UTF-8";
    };

  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.users.unlukii = {
    isNormalUser = true;
    description = "owner";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  security = {
    sudo = {
      enable = true;
      extraConfig = ''
        Defaults pwfeedback
        Defaults passprompt="󰀋 ❯ "
      '';
    };
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";

}
