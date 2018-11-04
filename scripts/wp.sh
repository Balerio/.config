#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

if [ -f $1 ]
 then 
	 echo "file exists"
	 cp $1 ~/.config/wallpaper.jpg
else
	echo "file does not exist"
fi


	 /usr/bin/feh --bg-scale --no-xinerama ~/.config/wallpaper.jpg
	 /usr/bin/wal -c
	 /usr/bin/wal -n -i ~/.config/wallpaper.jpg
