#!/bin/bash

video_path="$HOME/Videos"
date=$(date +"%d_%b_%y_%H%M")
mkdir -p "$video_path"

notify-send -t 5000 -u low -- "wl-screenrec" "Replay started"

# wl-screenrec -o HDMI-A-1 --codec hevc -f "$video_path"/temp.mp4 --history 30
wl-screenrec -o HDMI-A-1 --codec hevc -f "$video_path"/Rec_"$date".mp4 --history 30

