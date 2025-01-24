#!/bin/bash

user="nthp"
server="nthp.me"
path="/sites/cam/"

if ! lsusb | grep -q "Webcam"; then
	scp offline.jpg $user\@$server\:$path\cam.jpg
	exit
fi

cd /home/pi/

fswebcam -r "1280x720" --no-banner cam.jpg

scp cam.jpg $user\@$server\:$path

rm cam.jpg