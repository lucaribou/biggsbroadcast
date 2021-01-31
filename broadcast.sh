#!/bin/bash
VIDEO="/mnt/biggs-fs/video.mp4"
FRAMERATE="30"
GOP="60"
STREAM_KEY="steam_xxxxxxx_xxxxxxxxxxxxxxxx"
SERVER="rtmp://xxxxxxxxxxx.broadcast.steamcontent.com/app/"
OUTRES="1920x1080"
MAXRATE="3000k"
QUALITY="veryfast"

ffmpeg -re -nostdin -stream_loop -1 -i $VIDEO -framerate $FRAMERATE -g $GOP \
-vcodec libx264 -acodec aac \
-preset $QUALITY -s $OUTRES -maxrate $MAXRATE -f flv "$SERVER$STREAM_KEY" > output.log 2>&1 < /dev/null &
