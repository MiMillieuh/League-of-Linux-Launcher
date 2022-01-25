#!bin/bash
DXVKver="1.9.3"
DXVK=https://github.com/doitsujin/dxvk/releases/download/v$DXVKver/dxvk-$DXVKver.tar.gz
echo $DXVK

bash -c "mkdir ~/.LeagueOfLegends ; cd ~/.LeagueOfLegends ; wget https://lutris.nyc3.digitaloceanspaces.com/games/league-of-legend/launchhelper.sh ; wget https://lutris.nyc3.digitaloceanspaces.com/games/league-of-legend/syscall_check.sh ; wget https://github.com/GloriousEggroll/wine-ge-custom/releases/download/6.16-GE-3-LoL/wine-lutris-ge-6.16-3-lol-x86_64.tar.xz ; tar -xf wine-*.tar.xz ; wget $DXVK ; tar -xf dxvk-$DXVKver.tar.gz ; mkdir prefix ; cd lutris-* ; WINEPREFIX=~/.LeagueOfLegends/prefix /bin/wineboot ; cd .. ; cd dxvk-$DXVKver ; WINEPREFIX=~/.LeagueOfLegends/prefix ./setup_dxvk.sh install ; cd .. ; mkdir ~/.LeagueOfLegends/gamedl ; cd ~/.LeagueOfLegends/gamedl ; wget https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.na.exe ; cd .. ; cd lutris-* ; WINEPREFIX=~/.LeagueOfLegends/prefix /bin/wine ../gamedl/live.na.exe"
