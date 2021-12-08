#!/usr/bin/env bash

case "$@" in
    quit)
        exit 0 ;;
    "Shutdown")
        systemctl poweroff >> /dev/null
        ;;
    "Suspend")
        systemctl suspend >> /dev/null
        exit 0
        ;;
esac

echo "Lock"
echo "Logout"
echo "Shutdown"
echo "Suspend"
