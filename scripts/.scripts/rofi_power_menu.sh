#!/usr/bin/env bash

case "$@" in
    quit)
        exit 0 ;;
    "3 Shutdown")
        systemctl poweroff >> /dev/null
        ;;
    "4 Suspend")
        systemctl suspend >> /dev/null
        exit 0
        ;;
esac

echo "1 Lock"
echo "2 Logout"
echo "3 Shutdown"
echo "4 Suspend"
