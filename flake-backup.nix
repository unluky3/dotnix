{ lib, ... }:

let
  backupDir = "/CONFIG_BACKUP";
  flakePath = "${toString ./.}";
in
{
  systemd.services.flake-backup = {
    description = "Backup NixOS flake configuration";
    wants = [ "network.target" ];
    after = [ "network.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = lib.mkForce ''
        mkdir -p ${backupDir}
        cp -a ${flakePath} ${backupDir}/flake-$(date +%Y%m%d_%H%M%S)
      '';
    };
  };

  systemd.timers.flake-backup = {
    description = "Timer for flake-backup";
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      Persistent = true;
    };
  };
}

