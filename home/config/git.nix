{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "unluky3";
        email = "unluky3@github.com";
      };
      init.defaultBranch = "main";
    };
  };
}
