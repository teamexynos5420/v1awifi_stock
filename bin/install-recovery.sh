#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7573504:71d9680e1f6a6cc1305c971fa64abaff8113ab2e; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7149568:d7e315144ff6f825e62a852ebfdce7092530da75 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 71d9680e1f6a6cc1305c971fa64abaff8113ab2e 7573504 d7e315144ff6f825e62a852ebfdce7092530da75:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
