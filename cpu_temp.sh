#!/bin/sh

while true; do
  TEMP=$(sensors | awk '/Package id 0/ {print $4}')
  SPEED=$(awk -F: '/cpu MHz/ {print $2; exit}' /proc/cpuinfo | xargs)
  echo "CPU: $TEMP | ${SPEED} MHz"
  sleep 1
done | osd_cat -p top -A left -o 10 -c red -O 2 -u black -f 9x15bold -l 1 -d 9999
