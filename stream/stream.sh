#!/bin/bash

STREAMURL=http://www.twitch.tv/djfluffy_vs_joe
STREAMRES=best # Stream quality | options: 480p, 720p, 1080p, best

while true
do
  livestreamer $STREAMURL $STREAMRES --player omxplayer --fifo --player-args "--win \"0 0 1600 1200\" {filename}"
done
