#!/bin/sh

BAR_HEIGHT=22
BORDER_SIZE=1
YAD_WIDTH=222  #222
YAD_HEIGHT=193 #193
DATE="$(date +"%B %a %d %H:%M")"

case "$1" in
--popup)
  if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
    exit 0
  fi

  eval "$(xdotool getmouselocation --shell)"
  eval "$(xdotool getdisplaygeometry --shell)"

  # X
  if [ "$((X + YAD_WIDTH / 2 + BORDER_SIZE))" -gt "$WIDTH" ]; then
    pos_x=$((WIDTH - YAD_WIDTH - BORDER_SIZE))
  elif [ "$((X - YAD_WIDTH / 2 - BORDER_SIZE))" -lt 0 ]; then
    pos_x=$BORDER_SIZE
  else
    pos_x=$((X - YAD_WIDTH / 2))
  fi

  # Y
  if [ "$Y" -gt "$((HEIGHT / 2))" ]; then
    pos_y=$((HEIGHT - YAD_HEIGHT - BAR_HEIGHT - BORDER_SIZE))
  else
    pos_y=$((BAR_HEIGHT + BORDER_SIZE))
  fi

  GTK_THEME=Goldy-Dark-GTK yad --calendar \
    --undecorated --fixed --close-on-unfocus --no-buttons \
    --width="$YAD_WIDTH" --height="$YAD_HEIGHT" \
    --posx="$pos_x" --posy="$pos_y" \
    --title="yad-calendar" \
    --borders=0 \
    --fontname="Courier New 11" \
    >/dev/null &

  ;;
*)
  echo "$DATE"
  ;;
esac
