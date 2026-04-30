#! /bin/bash
# echo "Inhibiting idling and handle-lid-switch until 'sleep infinity' terminates"
echo "Enabling Idle Inhibitor Vigiland"
echo "Exit shell or terminate sleep with <Ctrl+C> to terminate systemd inhibition"
echo "Inhibition Enabled..."
# sudo systemd-inhibit --what="idle:handle-lid-switch" --why="User wants the screen to stay on!" sleep infinity
vigiland
