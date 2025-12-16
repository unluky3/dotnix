{ ... }:
{
  programs.nixvim.plugins.snacks = {
    enable = true;
    settings = {
      
      indent = {
        enable = true;
        animate.enabled = 1;
        scope = {
          enabled = true;
          underline = true;
        };
      };

      dashboard = {
        enable = true;
        width = 38;
        row = null;
        col = null;
        pane_gap = 4;
        preset = {
          pick = null;
          header = ''
              ／l、     
            （ﾟ､ ｡ ７    
              l  ~ヽ    
              じしf_,)ノ
          '';
          keys = [
            { icon = " "; key = "ff"; desc = "Files"       ; action = ":Telescope find_files"           ; }
            { icon = " "; key = "fr"; desc = "Recent files"; action = ":Telescope oldfiles"             ; }
            { icon = " "; key = "fd"; desc = "Dotfiles"    ; action = ":Telescope find_files cwd=~/.nix"; }
            { icon = " "; key =  "t"; desc = "Themes"      ; action = ":Telescope colorscheme"          ; }
            { icon = "󰈆 "; key =  "q"; desc = "Quit"        ; action = ":qa"                            ; }
          ];
        };
        sections = [
          { pane = 1; section = "terminal"; cmd = "clear; nitch"; height = 20; }
          { pane = 2; section = "header"; }
          { pane = 2; section = "keys"; gap = 1; }
        ];
      };

      lazygit.enable = true;
      terminal.enable = true;
    };
  };
}
