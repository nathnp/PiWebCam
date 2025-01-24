# PiWebCam

PiWebCam is an old school webcam script, that will upload an image from a webcam, to a web server.

## Usage

1. Follow setup bellow.

2. Let the camera do it's thing.

## Setup

1. install fswebcam

2. plugin your webcam and run `lsusb`, and look for some text only used by the webcam (i.e. "Webcam C920").

![](/Assets/fig1.png)

Replace \<CAM TEXT> with your elected text.

3. Fill out server info

Replace \<USER> with your server's username, \<DOMAIN> with your server's domain/ip, and \<PATH ENDING WITH /> with were you want the file to go on your server's disk (i.e. /var/www/html/ (it must end with a /)).

4. Do something cool

Now make a webpage that calls cam.jpg and boom, you now have a old school webcam. You'll want to set up a cronjob to run the script every now and then.

## Shutdown

Running `shutdown.sh` will upload `offline.jpg`, and shutdown the pi.

## Privacy

If the script does not detect the webcam, it will upload `offline.jpg`. Plugging the webcam back in, will resume normal operation. A USB hub with on/off switches can be handy for this.

The uploaded image is a .jpg, the microphone is not accessed. The webcam only fires up for a brief moment to take the image, it is not always on.

Don't point the webcam at anything you don't want to be seen.

![](/offline.jpg)