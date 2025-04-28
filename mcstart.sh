#!/bin/bash
cd /home/pihole/mcserver
while true
do
   java -Xmx2G -Xms2G -jar server.jar nogui
   sleep 60
done
