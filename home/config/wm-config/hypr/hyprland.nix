{ config, ... }:
{ 
  imports = [ ./keybinds.nix ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      
      source = [
        "${config.xdg.configHome}/hypr/scheme/current.conf"
      ];

      "$mod" = "SUPER";
      "$term" = "kitty";
      "$browser" = "firefox";
      "$fileManager" = "nautilus";

      decoration = {
        rounding = 10;
        shadow = {
          enabled = true;
          range = 5;
          render_power = 2;
          color = "rgb(191724)";
        };
        blur = {
          enabled = true;
          xray = false;
          special = true;
          ignore_opacity = true;
          new_optimizations = true;
          size = 5;
          passes = 2;
        };
      };

      input = {
        sensitivity = -1;
      };

      general = {
        border_size = 2;
        gaps_in = 5;
        gaps_out = 15;
        "col.active_border"   = "rgb(c4a7e7) rgb(26233a) 45deg";
        "col.inactive_border" = "rgb(26233a) rgb(1f1d2e) 45deg";
      };
      
      animations = {
        enabled = true;
        # Animation curves
        bezier = [
          "specialWorkSwitch, 0.05, 0.7, 0.1, 1"
          "emphasizedAccel, 0.3, 0, 0.8, 0.15"
          "emphasizedDecel, 0.05, 0.7, 0.1, 1"
          "standard, 0.2, 0, 0, 1"
        ];

        # Animation configs
        animation = [
          "layersIn, 1, 5, emphasizedDecel, slide"
          "layersOut, 1, 4, emphasizedAccel, slide"
          "fadeLayers, 1, 5, standard"

          "windowsIn, 1, 5, emphasizedDecel"
          "windowsOut, 1, 3, emphasizedAccel"
          "windowsMove, 1, 6, standard"
          "workspaces, 1, 5, standard"

          "specialWorkspace, 1, 4, specialWorkSwitch, slidefadevert 15%"
          "fade, 1, 6, standard"
          "fadeDim, 1, 6, standard"
          "border, 1, 6, standard"
        ];
      };
    };
  };
}
