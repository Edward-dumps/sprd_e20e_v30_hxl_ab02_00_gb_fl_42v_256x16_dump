#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery:36700160:3e4e6b3262c580caec985db81b767f4b956718d5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/boot:36700160:b11493f42f92b9764c7ebf02b9b1fb0d445c8d7d EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery 3e4e6b3262c580caec985db81b767f4b956718d5 36700160 b11493f42f92b9764c7ebf02b9b1fb0d445c8d7d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
