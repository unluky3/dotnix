{
  description = "Main nixos system";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sysc-greet = {
      url = "github:Nomadcxx/sysc-greet";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    caelestia-shell = {
      url = "github:caelestia-dots/shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
    };

  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${nixpkgs.stdenv.hostPlatform.system};
    in
    {
      nixosConfigurations.main = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs self; };
        modules = [
          ./flake-backup.nix
          ./system/configuration.nix
          inputs.sysc-greet.nixosModules.default
          home-manager.nixosModules.default
          {
            home-manager = {
              extraSpecialArgs = { inherit inputs self; };
              users."unlukii".imports = [
                inputs.caelestia-shell.homeManagerModules.default
                ./home/home.nix
              ];
              backupFileExtension = "hm-bck";
            };
          }
        ];
      };

      homeConfigurations.main = home-manager.lib.homeManagerConfiguration {
        extraSpecialArgs = { inherit inputs self; };
        modules = [
          inputs.caelestia-shell.homeManagerModules.default
          ./home/home.nix
        ];
      };

    };
}
