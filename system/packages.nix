{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      lf
      fzf
      cudatoolkit
      cudaPackages.cudnn
    ];
    variables = {
      PATH = [
        ../scripts
      ];
    };
  };
}
