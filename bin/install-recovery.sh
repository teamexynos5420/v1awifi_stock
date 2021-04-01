#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7598080:834af0176a91421d20979a8b842671c2be885905; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7165952:9df6511a8dd32c7614cf4495c0921c6c66caca20 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 834af0176a91421d20979a8b842671c2be885905 7598080 9df6511a8dd32c7614cf4495c0921c6c66caca20:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
