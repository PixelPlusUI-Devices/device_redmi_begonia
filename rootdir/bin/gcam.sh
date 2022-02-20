#!/vendor/bin/sh
while [ "$(getprop sys.boot_completed | tr -d '\r')" != "1" ]; do sleep 1; done
sleep 10

# Gcam copy config

if A=$(find /sdcard/Gcam/Configs8 -type f -name '*.xml' | wc -l); [ "$A" = "0" ]
then
mkdir -p /sdcard/Gcam/Configs8/
cp -r /vendor/etc/Gcam/Configs8/. /sdcard/Gcam/Configs8/
fi
