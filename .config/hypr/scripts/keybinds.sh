#!/bin/bash
# Config dosyasının yeri
confFile="$HOME/.config/hypr/hyprland.conf"

# 'bind =' satırlarını bul, temizle ve rofi ile göster
grep "bind =" $confFile | sed 's/bind = //g' | sed 's/, /, /g' | rofi -dmenu -p "🎹 Kısayollar" -i
