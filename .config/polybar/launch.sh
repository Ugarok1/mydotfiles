#!/usr/bin/env bash

# kill old bars
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

# start of every bar
polybar example &

