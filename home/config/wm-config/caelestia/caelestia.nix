{ inputs, config, pkgs, ... }:
{
  programs.caelestia = {
    enable = true;
    cli.enable = true;
    settings = {
      paths = {
        wallpaperDir = "~/.nix/home/config/wm-config/wallpapers";
      };
      lock.recolorLogo = true;
      general = {
        apps = {
	  terminal = "kitty";
	};
      };
    };
  };
}
