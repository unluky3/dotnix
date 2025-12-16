{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "unlukii3";
        email = "unlukii3@github.com";
      };
      init.defaultBranch = "main";
    };
  };
}
