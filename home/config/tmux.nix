{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    shortcut = "x";
    keyMode = "vi";

    plugins = with pkgs; [
      tmuxPlugins.rose-pine
      tmuxPlugins.weather
      tmuxPlugins.tmux-which-key
      tmuxPlugins.tmux-sessionx
    ];

    extraConfig = ''
      set -g @rose_pine_variant 'main'

    '';

  };
}
