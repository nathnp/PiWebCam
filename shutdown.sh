#!/bin/bash

user="<USER>"
server="<DOMAIN>"
path="<PATH ENDING WITH />"

scp offline.jpg $user\@$server\:$path\cam.jpg

sudo halt
