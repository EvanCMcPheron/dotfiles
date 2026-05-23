#! /bin/bash
# Expects 3 Arguments: Title, Subtext, and Button Text

if [[ $# -ne 3 ]]; then
	echo "Expects 3 Arguments: Title, Subtext, and Button Text ; Received $#"
	exit
fi

yad --title="$1" \
    --text="$2" \
    --text-align=center \
    --button="$3":0 \
    --buttons-layout=center \
    --width=500 --height=100 \
    --image=dialog-warning \
    --image-on-top \
    --on-top --sticky \
    --class="WARNING" \
    --borders=20
