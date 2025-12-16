{ pkgs, lib, ... }:
{
  imports = [
      ./home-packages.nix
      ./home-programs.nix
      ./home-services.nix
      ./home-env.nix
      ./config/wm-config/wm.nix
      ./config/shell/shell.nix
    ];

    home = {
      username = "unlukii";
      homeDirectory = "/home/unlukii";
      
      pointerCursor = {
        x11.enable = true;
        gtk.enable = true;
        package = pkgs.rose-pine-cursor;
        name = "BreezeX-RosePine-Linux";
        size = 20;
      };
      
      activation.setupWinSymlinks = lib.hm.dag.entryAfter ["writeBoundary"] ''
        mkdir -p $HOME/Windows
        ln -sf /Windows/Data "$HOME/Windows/"
        ln -sf /Windows/System "$HOME/Windows/"
      '';

    };

  programs.home-manager.enable = true;
  home.stateVersion = "25.11";
}
