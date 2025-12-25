{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;

    shortcut = "x";
    keyMode = "emacs";
    mouse = true;

    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.rose-pine;
        extraConfig = ''
          set -g @rose_pine_variant 'main'

          set -g @rose_pine_hostname 'on'
          set -g @rose_pine_user 'on'

          set -g @rose_pine_date_time '%H:%M'

          set -g @rose_pine_show_current_program 'on'
          set -g @rose_pine_directory 'on'

          set -g @rose_pine_left_separator ' → '
          set -g @rose_pine_right_separator ' ← '
          set -g @rose_pine_field_separator '  '
          set -g @rose_pine_window_separator ' • '

          set -g @rose_pine_session_icon ' '
          set -g @rose_pine_current_window_icon ' '
          set -g @rose_pine_folder_icon ' '
          set -g @rose_pine_username_icon ' '
          set -g @rose_pine_hostname_icon ' '
          set -g @rose_pine_date_time_icon ' '

        '';
      }
      {
        plugin = tmuxPlugins.tmux-sessionx;
        extraConfig = ''
          set -g @sessionx-bind 's'
          set -g @sessionx-window-mode 'on'
          set -g @sessionx-tree-mode 'on'

          set -g @sessionx-pointer " "

          set -g @sessionx-bind-accept 'tab'
          set -g @sessionx-bind-kill-session 'alt-x'
        '';
      }
    ];

    extraConfig = ''
      set -g status-position top

      unbind v
      unbind h
      bind-key h split-window -h
      bind-key v split-window -v

      unbind q
      bind-key q detach

      unbind k
      bind-key k kill-session
    '';

  };
}
