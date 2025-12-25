{ ... }:
{
  programs.nixvim.keymaps = [

    # === Telescope ===
    {
      action = "<cmd>Telescope find_files<cr>"; # find files
      key = "<Space>ff";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope oldfiles<cr>"; # find recent
      key = "<Space>fr";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope buffers<cr>"; # find buffers
      key = "<Space>fb";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope colorscheme<cr>"; # search for colorschemes
      key = "<Space>ft";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope live_grep<cr>"; # search for colorschemes
      key = "<Space>fw";
      mode = [ "n" ];
    }

    # === Buffers ===
    {
      action = "<cmd>bd<cr>"; # close buffer
      key = "<Space>x";
      mode = [ "n" ];
    }
    {
      action = "<cmd>wqa<cr>"; # quit neovim
      key = "<Space>q";
      mode = [ "n" ];
    }
    {
      action = "<cmd>bn<cr>"; # tab switching between buffers - normal
      key = "<Tab>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>bp<cr>"; # tab switching between buffers - reverse
      key = "<S-Tab>";
      mode = [ "n" ];
    }

    # === Terminal ===
    {
      action = "<cmd>ToggleTerm direction=float<cr>"; # toggle floating terminal
      key = "<Space>tt";
      mode = [ "n" ];
    }
    {
      action = "<cmd>ToggleTerm direction=tab<cr>"; # toggle terminal tab
      key = "<Space>tb";
      mode = [ "n" ];
    }
    {
      action = "<cmd>ToggleTerm direction=horizontal<cr>"; # toggle horizontal terminal
      key = "<Space>th";
      mode = [ "n" ];
    }
    {
      action = "<cmd>ToggleTerm direction=vertical<cr>"; # toggle vertical terminal
      key = "<Space>tv";
      mode = [ "n" ];
    }
    {
      action = "<cmd>ToggleTerm<cr>"; # close terminal
      key = "<esc>";
      mode = [ "t" ];
    }

    # === MISC ===
    {
      action = "<cmd>:silent! nohls<cr>"; # cancel search
      key = "<esc>";
      mode = [ "n" ];
    }
    {
      action = "<cmd>lua Snacks.dashboard.open()<cr>"; # open dashboard
      key = "<Space>l";
      mode = [ "n" ];

    }
    {
      action = ":"; # easier command input
      key = ";";
      mode = [ "n" ];
    }
    {
      action = "<cmd>NvimTreeToggle<cr>"; # toggle nvim-tree
      key = "<Space>e";
      mode = [ "n" ];
    }

    # === Git ===
    {
      action = "<cmd>lua Snacks.lazygit.open()<cr>";
      key = "<Space>gg";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_status<cr>";
      key = "<Space>gs";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_stash<cr>";
      key = "<Space>gh";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_files<cr>";
      key = "<Space>gf";
      mode = [ "n" ];
    }
    {
      action = "<cmd>Telescope git_branches<cr>";
      key = "<Space>gb";
      mode = [ "n" ];
    }

  ];
}
