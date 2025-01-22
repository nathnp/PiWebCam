#!/bin/bash

user="<username>"
server="<domain>"
path="<site path>"

if ! lsusb | grep -q "Webcam"; then
	exit
fi

fswebcam -r "1280x720" --no-banner cam.jpg

scp cam.jpg $user\@$server\:$path

rm cam.jpg