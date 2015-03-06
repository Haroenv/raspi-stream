#!/bin/bash
regex='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]' #regex should only allow twitch.tv etc
echo "What stream do you want to view?"
read stream

if [[ $stream =~ $regex ]]
then 
    STREAMURL=stream
else
    STREAMURL=http://www.twitch.tv/djfluffy_vs_joe #for some reason this is the default
fi

STREAMRES=best # Stream quality | options: 480p, 720p, 1080p, best

while true
do
  livestreamer $STREAMURL $STREAMRES --player omxplayer --fifo --player-args "--win \"0 0 1600 1200\" {filename}"
done
