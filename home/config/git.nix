{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "unluky3";
        email = "levaqa19@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
}
