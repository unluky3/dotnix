{ ... }:
{
  imports = [

    ./telescope.nix
    ./nvim-tree.nix
    ./snacks.nix
    ./lualine.nix
    ./cmp.nix
    ./whichkey.nix

  ];

  programs.nixvim.plugins = {
    ufo.enable = true;
    todo-comments.enable = true;
    colorizer.enable = true;
    toggleterm.enable = true;
    markview.enable = true;
    nvim-autopairs.enable = true;
    guess-indent.enable = true;
    direnv.enable = true;
    web-devicons.enable = true;
    vim-visual-multi.enable = true;
    notify.enable = true;

    nix.enable = true;
    mason.enable = true;

    image.enable = true;
    vimtex.enable = true;
    img-clip.enable = true;

    gitsigns = {
      enable = true;
      settings = {
        signcolumn = true;
        signs = {
          add = {
            text = "│";
          };
          change = {
            text = "︳";
          };
          changedelete = {
            text = "✕";
          };
          delete = {
            text = "_";
          };
          topdelete = {
            text = "‾";
          };
          untracked = {
            text = "┆";
          };
        };
      };
    };
    neogit.enable = true;
    trouble.enable = true;

    tiny-inline-diagnostic = {
      enable = true;
      settings = {
        multilines.enable = true;
        preset = "modern";
      };
    };

    harpoon = {
      enable = true;
      enableTelescope = true;
    };

    comment = {
      enable = true;
      settings.toggler = {
        line = "<Space>/";
        block = "<Space>b/";
      };
    };

    treesitter = {
      enable = true;
      settings.highlight.enable = true;
    };

    bufferline = {
      enable = true;
      settings = {
        options.always_show_bufferline = false;
      };
    };

  };
}
