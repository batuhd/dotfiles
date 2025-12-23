#!/bin/bash

# Eğer daemon zaten çalışıyorsa tekrar başlatma
if ! pidof swww-daemon > /dev/null; then
    swww-daemon & 
    sleep 1 
fi

# Resmi ayarla 
swww img /home/batu/Downloads/8808096.jpg --transition-type grow --transition-pos 0.5,0.5 --transition-step 90 --transition-fps 60