{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      lf
      fzf
    ];
    variables = {
      PATH = [
        ../scripts
      ];
    };
  };
}
