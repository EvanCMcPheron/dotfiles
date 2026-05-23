#! /bin/bash
# Expects 2 Arguments: The Warning Adjective, The Percentage

if [[ $# -ne 2 ]]; then
	echo "Expects 2 Arguments: The Warning Adjective, The Percentage ; Received $#"
	exit
fi

notify-send "⚡ Battery $1" "$2% remaining — plug in now." &

paplay /usr/share/sounds/freedesktop/stereo/window-attention.oga &

warning.sh "Battery $1" \
	"<b><big>⚡ Battery $1</big></b>\n\n$2% remaining — plug in now." \
	"  OK  " &
