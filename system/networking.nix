{ config, pkgs, inputs, ... }:
{
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
      settings = {
        General = {
          Name = "unlukii@nixos";
          ControllerMode = "dual";
          FastConnectable = "true";
          Experimental = "true";
        };
        Policy = { AutoEnable = "true"; };
        LE = { EnableAdvMonInterleaveScan = "true"; };
      };
    };
  };
}
