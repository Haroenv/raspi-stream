# Getting started
Install all dependencies by running provision.sh with `sudo ./provision.sh`  
This will install all required apt packages and pip packages and will run the streamer script.  

The streamer script has two modable variables: STREAMURL and STREAMRES.  
Adjust STREAMURL to the stream of your choice and STREAMRES to the desired  
resolution (the options are some standards, different streaming plugins may require other options.)  
The stream is than piped into omxplayer


# Extending on this
Do whatever you want with this script.  
A good starting point is to just fork it and make edits.  
Implemented something new that's kickass cool? Issue pull request m8!

Some tips on what you could extend (since this is rather robust):
* Choose vlc or another player instead of omxplayer
* Make this work in pip3
* Make this run in a server accessible from another machine, instead of piping to omxplayer

## Credits:
This script is like 90% based on [this](https://www.bitpi.co/2015/03/03/raspberry-pi-live-kitten-stream/) article from the cool guys over at bitpi.  
Be sure to check this site, it features a lot of rpi tutorials and tips!

I just improved their bash coding a bit (variables bro!). All credit to them
