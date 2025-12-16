{ config, pkgs, ... }:
{
  # Set up Nvidia
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        libva
        intel-media-driver
      ];
    }; 

    nvidia = {

      open = true;
      modesetting.enable = true;

      powerManagement = {
        enable = true;
      };
      
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.latest;
    
      prime = {
        sync = {
          enable = true;
        };

        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";

      };
    };
  };
  # And intel igpu
  services.xserver.videoDrivers = [ "intel" ];

  # Set up windows partitions
  systemd.tmpfiles.rules = [
    "d /Windows        0755 root root -"
    "d /Windows/Data   0755 root root -"
    "d /Windows/System 0755 root root -"
  ];

  fileSystems = {
    "/Windows/Data" = {
      device = "/dev/disk/by-label/Data";
      fsType = "ntfs";
    };
    "/Windows/System" = {
      device = "/dev/disk/by-label/System";
      fsType = "ntfs";
    };
  };


}
