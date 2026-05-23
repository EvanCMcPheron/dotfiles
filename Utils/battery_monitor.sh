#!/bin/bash
WARNED_LOW=false
WARNED_CRIT=false
LOW=10
CRIT=5

while sleep 1; do
    pct=$(cat /sys/class/power_supply/BAT1/capacity)
    status=$(cat /sys/class/power_supply/BAT1/status)

    # Don't warn while charging
    [[ "$status" == "Charging" || "$status" == "Full" ]] && WARNED_LOW=false && WARNED_CRIT=false && continue

    if [[ $pct -le $LOW && $pct -gt CRIT && "$WARNED_LOW" == false ]]; then
        WARNED_LOW=true
        battery_warning.sh "Low" "$pct"
    fi

    if [[ $pct -le $CRIT && "$WARNED_CRIT" == false ]]; then
        WARNED_CRIT=true
        battery_warning.sh "Critical" "$pct"
    fi
done
