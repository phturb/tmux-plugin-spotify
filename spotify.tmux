#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/scripts/helpers.sh"

spotify_status="#($CURRENT_DIR/scripts/spotify_status.sh)"
spotify_status_interpolation="\#{spotify_status}"

spotify_playback="#($CURRENT_DIR/scripts/spotify_track.sh)"
spotify_playback_interpolation="\#{spotify_track}"

set_tmux_option() {
  local option="$1"
  local value="$2"
  tmux set-option -gq "$option" "$value"
}

do_interpolation() {
  local string=$1
  local string=${string/$spotify_status_status/$spotify_status}
  local string=${string/$spotify_status_track/$spotify_track}
  echo "$string"
}

update_tmux_option() {
  local option="$1"
  local option_value="$(get_tmux_option "$option")"
  local new_option_value="$(do_interpolation "$option_value")"
  set_tmux_option "$option" "$new_option_value"
}

main() {
  update_tmux_option "status-right"
  update_tmux_option "status-left"
}

main
