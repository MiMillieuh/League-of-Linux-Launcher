#!bin/bash
#DXVKver="1.9.3"
#DXVK=https://github.com/doitsujin/dxvk/releases/download/v$DXVKver/dxvk-$DXVKver.tar.gz
WINELOLtag="7.0-GE-1-LoL"
WINELOLver="lutris-ge-7.0-1-lol"
WINELOL="https://github.com/GloriousEggroll/wine-ge-custom/releases/download/$WINELOLtag/wine-$WINELOLver-x86_64.tar.xz"


bash -c "mkdir ~/.LeagueOfLegends ; cd ~/.LeagueOfLegends ; wget https://raw.githubusercontent.com/MiMillieuh/League-of-Linux-Launcher/main/launchhelper.sh ; wget https://raw.githubusercontent.com/MiMillieuh/League-of-Linux-Launcher/main/syscall_check.sh ; wget https://raw.githubusercontent.com/MiMillieuh/League-of-Linux-Launcher/main/launch.sh ; wget $WINELOL ; tar -xf wine-$WINELOLver-x86_64.tar.xz ; mkdir prefix ; WINEPREFIX=~/.LeagueOfLegends/prefix $WINELOLver-x86_64/bin/wineboot ; wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks ; chmod +x winetricks ; ./winetricks --silent dxvk windowmanagerdecorated=n vcrun2012 vcrun 2010 winhttp vcrun2015 corefont win7 ; mkdir ~/.LeagueOfLegends/gamedl ; cd ~/.LeagueOfLegends/gamedl ; wget https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.na.exe ; cd ~/.LeagueOfLegends/ ; WINEPREFIX=~/.LeagueOfLegends/prefix $WINELOLver-x86_64/bin/wine gamedl/live.na.exe ; WINEPREFIX=~/.LeagueOfLegends/prefix $WINELOLver-x86_64/bin/wine gamedl/live.na.exe ; mv $WINELOLver-x86_64 winelol"
