#!/bin/bash 
#
#
killall -SIGUSR1 wl-screenrec
notify-send -t 5000 -u low -- "wl-screenrec" "Replay saved"

