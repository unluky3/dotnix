{
  config,
  pkgs,
  self,
  ...
}:
{
  programs.fastfetch = {
    enable = true;
    settings = {

      logo = {
        source = ./sakurafetch.png;
        padding = {
          top = 0;
          right = 1;
          left = 1;
        };
        width = 18;
        height = 9;
      };

      display = {

        separator = "  ";

        color = {
          keys = "cyan";
          title = "magenta";
        };

        key = {
          width = 10;
          type = "string";
        };

        bar = {
          width = 10;
          char = {
            elapsed = "=";
            total = "-";
          };
        };

        percent = {
          type = 9;
          color = {
            green = "blue";
            yellow = "yellow";
            red = "red";
          };
        };

      };

      modules = [
        "title"
        "break"
        {
          type = "os";
          key = "│  ";
          format = "{name} • {codename}";
        }
        {
          type = "kernel";
          key = "│  ";
          format = "{sysname} {release}";
        }
        {
          type = "uptime";
          key = "│  ";
          format = "You worked for {hours}h:{minutes}m:{seconds}s";
        }
        {
          type = "packages";
          key = "│ 󰏖 ";
          format = "{all} packages installed";
        }
        {
          type = "shell";
          key = "│  ";
        }
        {
          type = "wm";
          key = "│  ";
          format = "{pretty-name} {version}";
        }
        {
          type = "terminal";
          key = "│  ";
          format = "{pretty-name} {version}";
        }
        "break"
        {
          type = "colors";
          key = " ";
          symbol = "circle";
          separator = " ";
          paddingLeft = 6;
        }

      ];

    };
  };
}
