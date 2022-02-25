#!/usr/bin/env sh
        pkexec sh -c 'sysctl -w abi.vsyscall32=0'
            pkexec sh -c 'echo "abi.vsyscall32 = 0" >> /etc/sysctl.conf && sysctl -p'
