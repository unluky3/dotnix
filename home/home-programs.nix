{ config, ... }:
{
  imports = [
    ./config/bat.nix
    ./config/fzf.nix
    ./config/yazi.nix
    ./config/cava.nix
    ./config/kitty.nix
    ./config/firefox/firefox.nix
    ./config/nvim/main.nix
    ./config/btop.nix
    ./config/git.nix
    # ./config/fum/fum.nix
  ];
  programs = {

    nh = {
      enable = true;
      clean.enable = true;
      flake = "${config.home.homeDirectory}/.nix/";
    };

    direnv.enable = true;
    bash.enable = true;
    firefox.enable = true;
    ripgrep.enable = true;
    lazygit.enable = true;
    docker-cli.enable = true;

  };
}
