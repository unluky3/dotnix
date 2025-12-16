{ ... }:
{
  nix = {
    
    optimise = {
      automatic = true;
      dates     = ["weekly"];
    };
    
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };

    gc = {
      automatic = true;
      dates     = "weekly";
    };
  };
}
