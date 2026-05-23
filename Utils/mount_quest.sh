#!/bin/bash
# mount-quest.sh — Auto-mount Meta Quest 2 via MTP and print mount location

VENDOR_ID="2833"

# Find the Quest 2 on the USB bus
USB_LINE=$(lsusb | grep "$VENDOR_ID")
if [[ -z "$USB_LINE" ]]; then
    echo "Error: Quest 2 not found. Make sure it's plugged in and file transfer is enabled." >&2
    exit 1
fi

# Parse bus and device numbers
BUS=$(echo "$USB_LINE" | grep -oP 'Bus \K[0-9]+')
DEV=$(echo "$USB_LINE" | grep -oP 'Device \K[0-9]+')
MTP_URI="mtp://[usb:${BUS},${DEV}]/"

echo "Found Quest 2 at Bus $BUS, Device $DEV"
echo "Mounting $MTP_URI ..."

# Mount via gio
gio mount "$MTP_URI" 2>/dev/null

# Wait a moment for gvfs to register the mount
sleep 1

# Find the mount point under gvfs
MOUNT_PATH=$(find /run/user/"$UID"/gvfs -maxdepth 1 -name "mtp*" 2>/dev/null | head -n 1)

if [[ -n "$MOUNT_PATH" ]]; then
    echo "Mounted at: $MOUNT_PATH"
else
    echo "Warning: Mounted but couldn't find gvfs path. Check /run/user/$UID/gvfs/ manually." >&2
    exit 1
fi
