#!/bin/bash

kill_apps() {
    while read -r app; do
        wmctrl -i -c "$app"
    done < <(wmctrl -l | awk '{print $1}')
}

[[ -z "$DISPLAY" ]] && exit 1

case "$1" in
    lock)
        xtrlock
        ;;
    logout)
        i3-msg exit
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    suspend)
        systemctl suspend
        ;;
    *)
        echo "Usage: $0 {lock|logout|reboot|shutdown|suspend}"
        exit 2
        ;;
esac

exit 0
