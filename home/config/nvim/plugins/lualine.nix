{ ... }:
{
  programs.nixvim.plugins.lualine = {
    enable = true;

    settings = {
      
      options = {

        component_separators = {
          left = "•";
          right = "•";
        };
        section_separators = {
          left = "";
          right = "";
        };

        ignore_focus = [
          "nvim-tree"
        ];
        disabled_filetypes = [
          "NvimTree"
          "snacks_dashboard"
        ];
      };
      sections = {

        lualine_a = [
          {
            __unkeyed-1 = "mode";
            right_padding = 2;
            separator = {
              left = "";
              right = "";
            };
            icon = " ";
          }
        ];
        lualine_b = [ "filename" ];
        lualine_c = [
          "filetype"
          "branch"
        ];
        
        lualine_x = [ 
          "encoding"
          "lsp_status"
        ];
        lualine_y = [ "progress" ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
            left_padding = 2;
            separator = {
              left = "";
              right = "";
            };  
            icon = " ";
          }
        ];

      };
      inactive_sections = {
        lualine_a = [ "filename" "filetype" ];
        lualine_b = [];
        lualine_c = [];
        lualine_x = [];
        lualine_y = [];
        lualine_z = [ "lsp_status" "location" ];
      };

    };
  };
}
