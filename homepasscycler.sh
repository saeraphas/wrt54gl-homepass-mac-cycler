#!/bin/sh

InputFile=/tmp/homepassmacs.txt

while read line
do
     wl down
     echo "WiFi down."
     wl cur_etheraddr $line
     echo "Changed WiFi MAC to:"
     echo $line
     wl up
     echo "WiFi up."
     echo "Sleeping 30 minutes."
     sleep 1800

done < "$InputFile"
