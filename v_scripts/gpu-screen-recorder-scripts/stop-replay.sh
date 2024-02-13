#!/bin/sh

killall -SIGINT gpu-screen-recorder
notify-send -t 5000 -u low -- "GPU Screen Recorder" "Replay stop"

