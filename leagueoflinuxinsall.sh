#!bin/bash
DXVKver="1.9.4"
DXVK=https://github.com/doitsujin/dxvk/releases/download/v$DXVKver/dxvk-$DXVKver.tar.gz
WINELOLtag="7.0-GE-1-LoL"
WINELOLver="lutris-ge-7.0-1-lol"
WINELOL="https://github.com/GloriousEggroll/wine-ge-custom/releases/download/$WINELOLtag/wine-$WINELOLver-x86_64.tar.xz"
INSTALLDIR="~/.LeagueOfLegends"


bash -c "pip install psutil ; wget https://raw.githubusercontent.com/MiMillieuh/launchhelper/master/launchhelper2.py ; mkdir ~/.LeagueOfLegends ; cd $INSTALLDIR ; wget https://raw.githubusercontent.com/MiMillieuh/launchhelper/master/injector.py ; wget https://raw.githubusercontent.com/MiMillieuh/League-of-Linux-Launcher/main/syscall_check.sh ; wget https://raw.githubusercontent.com/MiMillieuh/League-of-Linux-Launcher/main/NewLauncherHelper.sh ; wget $WINELOL ; tar -xf wine-$WINELOLver-x86_64.tar.xz ; mkdir prefix ; WINEPREFIX=$INSTALLDIR/prefix $WINELOLver-x86_64/bin/wineboot ; wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks ; chmod +x winetricks ; ./winetricks --silent dxvk windowmanagerdecorated=n vcrun2012 vcrun 2010 winhttp vcrun2015 corefont win7 ; mkdir $INSTALLDIR/gamedl ; cd $INSTALLDIR/gamedl ; wget https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.na.exe ; cd ~/.LeagueOfLegends/ ; WINEPREFIX=$INSTALLDIR/prefix $WINELOLver-x86_64/bin/wine gamedl/live.na.exe"
