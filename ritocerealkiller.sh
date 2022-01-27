#!/bin/bash

cerealkiller

cerealkiller () {
if pgrep -x "RiotClientUx.exe" > /dev/null
then
    sleep 10 
    killall RiotClientUX.exe
    sleep 10
    mv ~/.LeagueOfLegends/lutris* ~/.LeagueOfLegends/winelol
    WINEPREFIX=~/.LeagueOfLegends/prefix ~/.LeagueOfLegends/winelol/bin/wine "~/.LeagueOfLegends/prefix/drive_c/Riot Games/Riot Client/RiotClientServices.exe" --launch-product=league_of_legends --launch-patchline=live
    exit 0
fi
}
if pgrep -x "RiotClientUx.exe" > /dev/null
then
    sleep 10 
    killall RiotClientUX.exe
    sleep 10
    mv ~/.LeagueOfLegends/lutris* ~/.LeagueOfLegends/winelol
    WINEPREFIX=~/.LeagueOfLegends/prefix ~/.LeagueOfLegends/winelol/bin/wine "~/.LeagueOfLegends/prefix/drive_c/Riot Games/Riot Client/RiotClientServices.exe" --launch-product=league_of_legends --launch-patchline=live
    exit 0
else
    cerealkiller
fi
