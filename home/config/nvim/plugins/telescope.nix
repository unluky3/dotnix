{ ... }:
{

  programs.nixvim.plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        border = true;
        borderchars = [
          " "
          " "
          " "
          " "
          " "
          " "
          " "
          " "
        ];
        selection_caret = "  ";
        prompt_prefix = "❯ ";
      };
      pickers = {
        find_files.prompt_prefix = "  ❯ ";
        oldfiles.prompt_prefix = "󱝩  ❯ ";
        buffers.prompt_prefix = "󱦞  ❯ ";
        colorscheme.prompt_prefix = "󰴱  ❯ ";
      };
    };
  };
}
