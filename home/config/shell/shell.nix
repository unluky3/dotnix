{ ... }:
{
  imports = [
    ./starship.nix
    ./fastfetch.nix
  ];
  home = {
    shell.enableFishIntegration = true;
    shellAliases = {
      v = "nvim";
      cl = "clear";
      y = "yazi";
      fv = "v $(fzf)";
    };
  };

  programs = {
    fish = {
      enable = true;
      shellInit = ''
        set -g fish_greeting
        clear
        if [ $TERM = "xterm-kitty" ]
          fastfetch
          # kittysay "sucsesfully unemployed for $(date +%Y) years :3" -t
        end  
      '';
    };
    fzf = {
      enable = true;
      enableFishIntegration = true;
    };

  };
}
