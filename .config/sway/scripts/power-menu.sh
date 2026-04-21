#!/bin/bash

MENU="$(printf "󰍃 Log out\n Reboot\n󰐥 Shutdown")"
LINE_COUNT="$(printf '%s' "$MENU" | grep -c .)"

SELECTION="$(printf "$MENU" | fuzzel --dmenu -l "$LINE_COUNT" -w 18 -p "Select an option: ")"

# confirm_action() {
#     local action="$1"
#     CONFIRMATION="$(printf "No\nYes" | fuzzel --dmenu -l 2 -w 18 -p "$action?")"
#     [[ "$CONFIRMATION" == *"Yes"* ]]
# }

case $SELECTION in
    *"󰍃 Log out"*)
        swaymsg exit;;
    *" Reboot"*)
        systemctl reboot;;
    *"󰐥 Shutdown"*)
        systemctl poweroff;;
    # *"󰍃 Log out"*)
    #     if confirm_action "Log out"; then
    #         swaymsg exit
    #     fi;;
    # *" Reboot"*)
    #     if confirm_action "Reboot"; then
    #         systemctl reboot
    #     fi;;
    # *"󰐥 Shutdown"*)
    #     if confirm_action "Shutdown"; then
    #         systemctl poweroff
    #     fi;;
esac
