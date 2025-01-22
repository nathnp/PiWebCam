#!/bin/bash

server="nthp.me"
path="/sites/cam/"

if ! lsusb | grep -q "Webcam"; then
	exit
fi

fswebcam -r "1280x720" --no-banner cam.jpg

scp cam.jpg nthp@nthp.me:/sites/cam/

rm cam.jpg