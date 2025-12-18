{
  pkgs,
  self,
  ...
}:

let
  backupDir = "/CONFIG_BACKUP";
  maxBackups = 10;
in
{
  systemd.services.flake-backup = {
    description = "Snapshot NixOS flake source to backup directory";
    after = [ "multi-user.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = pkgs.writeShellScript "flake-snapshot" ''
        ${pkgs.coreutils}/bin/mkdir -p ${backupDir}
        TIMESTAMP=$(date +%Y%m%d_%H%M%S)
        DEST="${backupDir}/flake-$TIMESTAMP"
        ${pkgs.coreutils}/bin/cp -pLR ${self.outPath} "$DEST"
        ${pkgs.coreutils}/bin/chmod -R +w "$DEST"
        echo "Configuration backed up from ${self.outPath} to $DEST"
        COUNT=$(${pkgs.coreutils}/bin/ls -1d ${backupDir}/flake-* 2>/dev/null | ${pkgs.coreutils}/bin/wc -l)

        if [ "$COUNT" -gt ${toString maxBackups} ]; then
          OLDEST=$(${pkgs.coreutils}/bin/ls -1d ${backupDir}/flake-* | ${pkgs.coreutils}/bin/sort | ${pkgs.coreutils}/bin/head -n 1)
          ${pkgs.coreutils}/bin/rm -rf "$OLDEST"
          echo "Rotation: Deleted oldest backup $OLDEST to maintain limit of ${toString maxBackups}"
        fi
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
