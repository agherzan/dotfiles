#!/bin/bash
#
# a simple logout dialog
#
###

kill_apps() {
    while read -r app; do
        wmctrl -i -c "$app"
    done < <(wmctrl -l | awk '{print $1}')
}

choice_by_dmenu() {
    if [[ -f "$HOME/.dmenurc" ]]; then
        . "$HOME/.dmenurc"
    else
        DMENU='dmenu -fn -misc-*-*-*-*-*-26-*-*-*-*-*-*-* -nf '#ffffff''
    fi

    choice=$(echo -e "0: Cancel\n1: Logout\n2: Shutdown\n3: Reboot" | $DMENU | cut -d ':' -f 1)
}

[[ -z "$DISPLAY" ]] && exit 1

choice_by_dmenu

[[ -z "$choice" ]] && exit 1

# execute the choice in background
case "$choice" in
    0)
        exit 0
        ;;
    1)
        kill_apps
        kill $(pgrep X) &
        ;;
    2)
        kill_apps
        sudo shutdown -r now &
        ;;
    3)
        kill_apps
        sudo shutdown -h now &
        ;;
esac

exit 0
