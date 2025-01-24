#!/bin/bash

user="<USER>"
server="<DOMAIN>"
path="<PATH ENDING WITH />"
cam="<CAM TEXT>"

if ! lsusb | grep -q "$cam"; then
	scp offline.jpg $user\@$server\:$path\cam.jpg
	exit
fi

cd /home/pi/

fswebcam -r "1280x720" --no-banner cam.jpg

scp cam.jpg $user\@$server\:$path

rm cam.jpg