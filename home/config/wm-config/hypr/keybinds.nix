{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec = [ "hyprctl dispatch submap global" ];

    bind = [
      "$mod, d, exec, $browser"
      "$mod, t, exec, $term"

      "$mod, q, killactive"
      "$mod+shift, q, forcekillactive"
      "$mod, e, exec, $fileManager"

      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      "$mod+shift, 1, movetoworkspace, 1"
      "$mod+shift, 2, movetoworkspace, 2"
      "$mod+shift, 3, movetoworkspace, 3"
      "$mod+shift, 4, movetoworkspace, 4"
      "$mod+shift, 5, movetoworkspace, 5"
      "$mod+shift, 6, movetoworkspace, 6"
      "$mod+shift, 7, movetoworkspace, 7"
      "$mod+shift, 8, movetoworkspace, 8"
      "$mod+shift, 9, movetoworkspace, 9"
      "$mod+shift, 0, movetoworkspace, 10"

      "$mod+alt, 1, movetoworkspacesilent, 1"
      "$mod+alt, 2, movetoworkspacesilent, 2"
      "$mod+alt, 3, movetoworkspacesilent, 3"
      "$mod+alt, 4, movetoworkspacesilent, 4"
      "$mod+alt, 5, movetoworkspacesilent, 5"
      "$mod+alt, 6, movetoworkspacesilent, 6"
      "$mod+alt, 7, movetoworkspacesilent, 7"
      "$mod+alt, 8, movetoworkspacesilent, 8"
      "$mod+alt, 9, movetoworkspacesilent, 9"
      "$mod+alt, 0, movetoworkspacesilent, 10"

      "$mod+ctrl, right, workspace, +1"
      "$mod+ctrl, left, workspace, -1"
      "$mod+ctrl+shift, right, movetoworkspace, +1"
      "$mod+ctrl+shift, left, movetoworkspace, -1"
      "$mod+ctrl+alt, right, movetoworkspacesilent, +1"
      "$mod+ctrl+alt, left, movetoworkspacesilent, -1"

      "$mod+ctrl, Down, workspace, empty"
      "$mod, space, global, caelestia:launcher"
      "$mod, a, global, caelestia:launcher"
      "$mod, w, togglefloating"

      "$mod, s, exec, caelestia toggle special"
      "$mod+shift, s, movetoworkspace, special"
      "$mod+alt, s, movetoworkspacesilent, special"

      "$mod, f, fullscreen"

      "$mod,    up, movefocus, u"
      "$mod,  down, movefocus, d"
      "$mod,  left, movefocus, l"
      "$mod, right, movefocus, r"

      "$mod+shift, f, pseudo, active"

      "$mod, v, exec, caelestia clipboard"
      "$mod, c, exec, caelestia screenshot"
      "$mod+alt, e, exec, caelestia emoji -p"
    ];

    # Caelestia binds
    bindin = [
      "$mod, mouse:272,  global, caelestia:launcherInterrupt"
      "$mod, mouse:273,  global, caelestia:launcherInterrupt"
      "$mod, mouse:274,  global, caelestia:launcherInterrupt"
      "$mod, mouse:275,  global, caelestia:launcherInterrupt"
      "$mod, mouse:276,  global, caelestia:launcherInterrupt"
      "$mod, mouse:277,  global, caelestia:launcherInterrupt"
      "$mod, mouse_up,   global, caelestia:launcherInterrupt"
      "$mod, mouse_down, global, caelestia:launcherInterrupt"
    ];

    bindl = [

      "$mod, backspace,         global, caelestia:session"
      "$mod+shift, n,           global, caelestia:clearNotifs"
      "$mod+alt+ctrl, p,        global, caelestia:showall"

      "$mod, l,                 global, caelestia:lock"
      "$mod+shift, l,           exec, caelestia shell -d"
      "$mod+shift, l,           global, caelestia:lock"

      "Ctrl+Super, Space,       global, caelestia:mediaToggle"
      "Ctrl+Super, Equal,       global, caelestia:mediaNext"
      "Ctrl+Super, Minus,       global, caelestia:mediaPrev"
    ];

    binde = [
      ",XF86AudioMute,        exec, wpctl set-mute @DEFAULT_SINK@ toggle"
      ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_SINK@ 5%-"
      ",XF86MonBrightnessUp,    global, caelestia:brightnessUp"
      ",XF86MonBrightnessDown,  global, caelestia:brightnessDown"

      "$mod+shift,    up, resizeactive, 0 -10"
      "$mod+shift,  down, resizeactive, 0  10"
      "$mod+shift,  left, resizeactive, -10 0"
      "$mod+shift, right, resizeactive,  10 0"
    ];

    bindm = [
      "$mod, Z, movewindow"
      "$mod, X, resizewindow"
    ];
  };
}
