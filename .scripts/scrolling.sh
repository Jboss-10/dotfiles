#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
  --delay 0.05 \
  --scroll-padding "  " \
  --match-command "$(dirname $0)/playing.fish --status" \
  --match-text "Playing" "--scroll 1" \
  --match-text "Paused" "--scroll 0" \
  --update-check true "$(dirname $0)/playing.fish" &

wait
