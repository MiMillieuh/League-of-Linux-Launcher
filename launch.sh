#!/bin/bash
mv lutris* winelol
WINEPREFIX=~/.LeagueOfLegends/prefix $WINELOLver-x86_64/bin/wine "prefix/drive_c/Riot Games/Riot Client/RiotClientServices.exe" --launch-product=league_of_legends --launch-patchline=live
