#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:16f411c2252612e33b20084cc586fe896308bdfe; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:5882c2330a871f4794bdff06402f8abca86842a2 \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:16f411c2252612e33b20084cc586fe896308bdfe && \
      log -t recovery "Installing new oppo recovery image: succeeded" && \
      setprop ro.recovery.updated true || \
      log -t recovery "Installing new oppo recovery image: failed" && \
      setprop ro.recovery.updated false
else
  log -t recovery "Recovery image already installed"
  setprop ro.recovery.updated true
fi
