#!/bin/bash -e

# video_path="$HOME/Videos"
# date=$(date +"%d_%b_%y_%H%M")
killall -SIGINT wl-screenrec
# mv "$video_path"/temp.mp4 "$video_path"/Rec_"$date".mp4
notify-send -t 5000 -u low -- "wl-screenrec" "Replay stop"

