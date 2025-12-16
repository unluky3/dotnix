{ config, ... }:
let
  homeDir = config.home.homeDirectory;
in
{
  home.sessionVariables = {
    EDITOR = "nvim";
  };

}
