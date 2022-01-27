#!/bin/bash

if pgrep -x "RiotClientServices.exe" > /dev/null
then
    sleep 5 
    killall RiotClientServices.exe
else
    echo "Stopped"
fi
