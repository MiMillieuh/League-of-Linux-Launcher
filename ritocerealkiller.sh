#!/bin/bash

if pgrep -x "RiotClientUX.exe" > /dev/null
then
    sleep 10 
    killall RiotClientUX.exe
    sleep 10
    mv ~/.LeagueOfLegends/lutris* ~/.LeagueOfLegends/winelol
    WINEPREFIX=~/.LeagueOfLegends/prefix ~/.LeagueOfLegends/winelol/bin/wine "~/.LeagueOfLegends/prefix/drive_c/Riot Games/Riot Client/RiotClientServices.exe" --launch-product=league_of_legends --launch-patchline=live
    
else
    echo "Stopped"
fi
