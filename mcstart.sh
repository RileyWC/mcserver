#!/bin/bash
cd ~/mcserver
while true
do
   java -Xmx1024M -Xms1024M -jar server.jar
   sleep 10
done
