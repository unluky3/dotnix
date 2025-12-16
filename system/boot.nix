{ pkgs, ... }:
{
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {

        enable                = true;
        copyKernels           = true;
        efiSupport            = true;
        fsIdentifier          = "label";

        theme = pkgs.catppuccin-grub;

        useOSProber = true;

        devices        = [ "nodev" ];

        extraEntries = ''
          menuentry "Reboot" {
            reboot
          }
          menuentry "Poweroff" {
            halt
          }
        '';
      };
    };
   
    kernelModules = [
      "v4l2loopback"
      "hid_apple"
      "nvidia"
      "nvidiafb"
      "nvidia-modeset"
      "nvidia-uvm"
      "nvidia-drm"
      "i915"
    ];

    kernelParams = [
      "nvidia-drm.modeset=1"
      "loglevel=7"
      "vconsole.font=Uni1-Terminus16"
    ];

  };
}
