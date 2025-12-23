#!/bin/bash

if [ "$1" == "save" ]; then
    # --- Mod: Kaydet (Shift + Print) ---
    dosya="$HOME/Pictures/Ekran_$(date +'%Y%m%d_%H%M%S').png"
    grim "$dosya"
    notify-send "Ekran Görüntüsü" "Kaydedildi 💾" -t 1000
else
    # --- Mod: Kopyala (Sadece Print) ---
    # Seçim yap ve kopyala
    grim -g "$(slurp)" - | wl-copy
    
    # Eğer seçim yapıldıysa (vazgeçilmediyse) bildirim at
    if [ $? -eq 0 ]; then
        notify-send "Ekran Görüntüsü" "Panoya kopyalandı 📸" -t 1000
    fi
fi
