#!/bin/bash

# Eğer Cava config dosyası varsa onu kullan, yoksa varsayılanla çalış
config_file="$HOME/.config/cava/config"

if [ -f "$config_file" ]; then
    cava -p "$config_file" | sed -u 's/;//g;s/0/ /g;s/1/▂/g;s/2/▃/g;s/3/▄/g;s/4/▅/g;s/5/▆/g;s/6/▇/g;s/7/█/g;'
else
    # Config yoksa direkt çalıştır
    cava | sed -u 's/;//g;s/0/ /g;s/1/▂/g;s/2/▃/g;s/3/▄/g;s/4/▅/g;s/5/▆/g;s/6/▇/g;s/7/█/g;'
fi