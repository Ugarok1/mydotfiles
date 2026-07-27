#!/bin/bash

WALLPAPER_DIR="$HOME/.config/swww/gif"
STATE_FILE="${XDG_CACHE_HOME:-$HOME/.cache}/current_wallpaper"

BG_CURRENT=$(cat "$STATE_FILE" 2>/dev/null)

image_path="$(fd . -e jpg -e jpeg -e jxl -e jpegxl -e png -e gif -e webp -e bmp -e svg "$WALLPAPER_DIR" | shuf -n 1)"

if [[ "$image_path" == "$BG_CURRENT" ]]; then
  exec "$0" "$@"
else
  awww img "$image_path" --transition-type "any" --transition-duration "1"
  echo "$image_path" >"$STATE_FILE"
fi
