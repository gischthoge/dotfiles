#!/usr/bin/env bash

get_monitors(){
  readarray -t MONITORS < <(hyprctl monitors -j | jq -r '.[] | [.description, .id] | @tsv')

  MONITOR_ID="0"
  for i in "${MONITORS[@]}"; do 
    if [[ $i =~ "PD3205U" ]]; then
      MID=$(echo "$i" | cut -d$'\t' -f2)
    elif [[ "$i" =~ "LG Ultra HD" ]]; then
      MID=$(echo "$i" | cut -d$'\t' -f2)
    fi
  done
}

monitor_added(){
  PORT=$(echo $1 | cut -d '>' -f3)
  sleep 3
  MID=$(hyprctl monitors -j | jq -r --arg PORT "$PORT" '.[] | select(.name==$PORT) | .id')
  eww open bar$MID
}

open_all(){
  eww close-all
  readarray -t MONITORS < <(hyprctl monitors -j | jq -r '.[].id')
  for i in "${MONITORS[@]}"; do
    eww open bar$i
  done
}

handle() {
  case $1 in
    monitoradded*) monitor_added $1 ;;
  esac
}

listen() {
  socat -U - UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
}

open_all
listen &
