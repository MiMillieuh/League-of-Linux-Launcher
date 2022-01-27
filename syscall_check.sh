#!/usr/bin/env sh

# If abi.vsyscall32=0 is already set, no need to do anything
if [ "$(cat /proc/sys/abi/vsyscall32)" -eq 0 ]; then
    exit 0
fi

dialog() {
    zenity "$@" --icon-name='lutris' --width="400" --title="League of Legends anticheat compatibility check"
}

final_check() {
    if [ "$(cat /proc/sys/abi/vsyscall32)" -ne 0 ]; then
        dialog --warning --text="As far as this script can detect, your system is not configured to work with League's anticheat. Please verify that you can get into the practice too before playing a multiplayer game."
    fi
}

trap final_check EXIT

if grep -E -x -q "abi.vsyscall32( )?=( )?0" /etc/sysctl.conf; then
    if dialog --question --text="It looks like you already configured your system to work with League anticheat, and saved the setting to persist across reboots. However, for some reason the persistence part did not work.\n\nFor now, would you like to enable the setting again until the next reboot?"
    then
        pkexec sh -c 'sysctl -w abi.vsyscall32=0'
    fi
    exit 0
fi
            pkexec sh -c 'echo "abi.vsyscall32 = 0" >> /etc/sysctl.conf && sysctl -p'
exit 0
