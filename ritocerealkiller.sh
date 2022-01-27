#!/bin/bash

if pgrep -x "RiotClientUX.exe" > /dev/null
then
    sleep 10 
    killall RiotClientServices.exe
    sleep 10
    WINEPREFIX=~/.LeagueOfLegends/prefix winelol/bin/wine "prefix/drive_c/Riot Games/Riot Client/RiotClientServices.exe" --launch-product=league_of_legends --launch-patchline=live
    
else
    echo "Stopped"
fi
