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


	 /usr/bin/feh --bg-fill --no-xinerama ~/.config/wallpaper.jpg
	 /usr/bin/wal -c
	 /usr/bin/wal --saturate 0.5 -n -i ~/.config/wallpaper.jpg
