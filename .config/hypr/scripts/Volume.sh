#!/bin/bash

# --- Hoparlör İşlemleri ---
if [[ "$1" == "--get" ]]; then
    pamixer --get-volume
elif [[ "$1" == "--inc" ]]; then
    pamixer -i 5 --allow-boost
elif [[ "$1" == "--dec" ]]; then
    pamixer -d 5
elif [[ "$1" == "--toggle" ]]; then
    pamixer -t
    
# --- Mikrofon İşlemleri ---
elif [[ "$1" == "--toggle-mic" ]]; then
    pamixer --default-source -t
elif [[ "$1" == "--mic-inc" ]]; then
    pamixer --default-source -i 5
elif [[ "$1" == "--mic-dec" ]]; then
    pamixer --default-source -d 5
elif [[ "$1" == "--get-mic" ]]; then
    pamixer --default-source --get-volume
fi