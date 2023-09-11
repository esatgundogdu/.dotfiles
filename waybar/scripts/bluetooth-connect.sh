#!/usr/bin/bash

device_mac=$(bluetoothctl devices Bonded | awk '{print $2}')

device_connected=$(bluetoothctl devices Connected | awk '{print $2}')

if [ "$device_mac" = "$device_connected" ]; then
    echo "Device already connected."
else
    echo "Connecting..."
    bluetoothctl connect $device_mac > /dev/null
fi
