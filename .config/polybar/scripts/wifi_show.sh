#!/bin/bash
# my first script by the way, well, writen by AI but fixed by me XD
INTERFACE="wlp58s0"

if [ "$(cat /sys/class/net/$INTERFACE/operstate 2>/dev/null)" = "up" ]; then

  SIGNAL=$(iw dev $INTERFACE link | grep 'signal:' | awk '{print $2}')

  if [ -n "$SIGNAL" ]; then
    PERCENTAGE=$(((SIGNAL + 100) * 100 / 70))
    [ $PERCENTAGE -gt 100 ] && PERCENTAGE=100
    [ $PERCENTAGE -lt 0 ] && PERCENTAGE=0

    SSID=$(iwgetid -r $INTERFACE 2>/dev/null)

    echo " ${PERCENTAGE}% ${SSID}"
  else
    SSID=$(iwgetid -r $INTERFACE 2>/dev/null)
    echo " Connected (${SSID})"
  fi
else
  echo " Disconnected"
fi
