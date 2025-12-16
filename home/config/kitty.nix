{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    font = {
      name = "CaskaydiaCove Nerd Font";   
      package = pkgs.nerd-fonts.caskaydia-cove; 
      size = 14;                         
    };
    themeFile = "rose-pine";
    settings = {
      cursor_trail = 1;
      cursor_trail_decay = "0.1 0.4";
      window_margin_width = 10;
    };
  };
}
