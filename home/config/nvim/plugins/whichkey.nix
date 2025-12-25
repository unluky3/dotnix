{ ... }:
{
  programs.nixvim.plugins.which-key = {
    enable = true;
    settings = {
      spec = [

        # === Miscelaneous ===
        {
          __unkeyed = "<Space>e";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Toggle NvimTree";
        }
        {
          __unkeyed = "<Space>l";
          icon = {
            icon = "󱒉 ";
            color = "cyan";
          };
          desc = "Open dashboard";
        }
        {
          __unkeyed = "<esc>";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Cancel search";
        }
        {
          __unkeyed = "<Space>/";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Comment line";
        }
        {
          __unkeyed = "<Space>b";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Comment block";
        }
        {
          __unkeyed = "<Space>b/";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Comment block";
        }

        # === Git ===
        {
          __unkeyed = "<Space>g";
          icon = {
            icon = " ";
            color = "cyan";
          };
          group = "Git";
        }
        {
          __unkeyed = "<Space>gg";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Open lazyGit";
        }
        {
          __unkeyed = "<Space>gs";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Telescope Git status";
        }
        {
          __unkeyed = "<Space>gh";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Telescope Git stash";
        }
        {
          __unkeyed = "<Space>gf";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Telescope Git files";
        }
        {
          __unkeyed = "<Space>gb";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Telescope Git branches";
        }

        # === Terminal ===
        {
          __unkeyed = "<Space>t";
          icon = {
            group = "Terminal";
            icon = " ";
            color = "cyan";
          };
        }
        {
          __unkeyed = "<Space>tt";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Toggle floating terminal";
        }
        {
          __unkeyed = "<Space>tb";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Toggle terminal buffer";
        }
        {
          __unkeyed = "<Space>th";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Toggle horizontal terminal";
        }
        {
          __unkeyed = "<Space>tv";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Toggle vertical terminal";
        }
        {
          __unkeyed = "<esc>";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Cose terminal";
          mode = [ "t" ];
        }

        # === Buffers ===
        {
          __unkeyed = "<Space>x";
          icon = {
            icon = "󰓩 ";
            color = "cyan";
          };
          desc = "Close buffer";
        }
        {
          __unkeyed = "<Space>q";
          icon = {
            icon = "󰈆 ";
            color = "cyan";
          };
          desc = "Close NeoVim";
        }
        {
          __unkeyed = "<Tab>";
          icon = {
            icon = "󰌒 ";
            color = "cyan";
          };
          desc = "Cycle buffer right";
        }
        {
          __unkeyed = "<S-Tab>";
          icon = {
            icon = "󰌥 ";
            color = "cyan";
          };
          desc = "Cycle buffer left";
        }

        # === Telescope ===
        {
          __unkeyed = "<Space>f";
          icon = {
            icon = " ";
            color = "cyan";
          };
          group = "Telescope (Search)";
        }
        {
          __unkeyed = "<Space>ff";
          icon = {
            icon = "󰥨 ";
            color = "cyan";
          };
          desc = "Search files";
        }
        {
          __unkeyed = "<Space>fr";
          icon = {
            icon = "󱝩 ";
            color = "cyan";
          };
          desc = "Search recent files";
        }
        {
          __unkeyed = "<Space>fb";
          icon = {
            icon = "󱦞 ";
            color = "cyan";
          };
          desc = "Search buffers";
        }
        {
          __unkeyed = "<Space>fc";
          icon = {
            icon = " ";
            color = "cyan";
          };
          desc = "Choose colorscheme";
        }
        {
          __unkeyed = "<Space>fw";
          icon = {
            icon = "󰾹 ";
            color = "cyan";
          };
          desc = "Choose colorscheme";
        }

      ];
    };
  };
}
