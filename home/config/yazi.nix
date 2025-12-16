{ pkgs,  ... }:
{
  programs.yazi = 
    let
      rosePineRepo = pkgs.fetchFromGitHub {
        owner = "rose-pine";
        repo = "yazi";
        rev = "main";
        sha256 = "sha256-3j7TTtzG+GCB4uVeCiuvb/0dCkHPz7X+MDBVVUp646A=";
      };
    in {
      enable = true;
    
      flavors = {
        rose-pine = rosePineRepo + "/flavors/rose-pine.yazi";
        rose-pine-moon = rosePineRepo + "/flavors/rose-pine-moon.yazi";
        rose-pine-dawn = rosePineRepo + "/flavors/rose-pine-dawn.yazi";
      };
    
      theme = builtins.fromTOML (builtins.readFile (
        rosePineRepo + "/themes/rose-pine.toml"
      )) // {
        flavor = {
          dark = "rose-pine";
          light = "rose-pine-dawn";
        };
      };
    };
}
