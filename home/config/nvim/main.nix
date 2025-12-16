{ inputs, ...}:
{
  imports = [
    inputs.nixvim.homeModules.nixvim

    ./keymaps.nix
    ./plugins/plugins.nix

  ];

  programs.nixvim = {
    enable = true;

    clipboard = {
      providers.wl-copy.enable = true;
      register = "unnamedplus";
    };

    colorschemes = {
      catppuccin.enable = true;
      rose-pine.enable = true;
      tokyonight.enable = true;
    };
    colorscheme = "rose-pine";

    opts = {
      showmode = false;
      statusline = "%f%r";
      completeopt = ["menuone" "noselect" "noinsert"];
      fillchars =  { 
        eob = " ";
        vert = " ";
        horiz = " ";
      };
      number = true;        
      relativenumber = true;
      signcolumn = "yes";
    };

    diagnostic.settings.signs = {
      text = {
        ERROR = " ";
        WARN  = " ";
        INFO  = " ";
        HINT  = "󰌵 ";
      };
    };

    autoCmd = [
      {
        event = [ "BufEnter" ];
        pattern = "*";         
        command = ''
          if &filetype ==# "image_nvim" || &buftype ==# "image_nvim"
            setlocal nonumber
            setlocal norelativenumber
          endif
        '';
      }
    ];

    lsp = {
      servers = {
        nixd.enable = true;
        ruff.enable = true;
        lua_ls.enable = true;
        marksman.enable = true;
        cssls.enable = true;
        fish_lsp.enable = true;
        html.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        yamlls.enable = true;
      };
    };

  };
}
