{ ... }:
{
  programs.nixvim.plugins.nvim-tree = {
    enable = true;
    settings = {
      disable_netrw = true;
      hijack_cursor = true;
      git.enable = true;
      modified.enable = true;
      renderer = {
        hidden_display = "all";
        highlight_git = "icon";
        highlight_opened_files = "icon";
        highlight_modified = "icon";
        indent_markers = {
          enable = true;
          inline_arrows = true;
        };
      };
    };
  };
}
