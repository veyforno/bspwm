#!/bin/bash

# Jalankan cava dan baca setiap baris outputnya
cava -p ~/.config/cava/config_polybar | while read -r line; do
    # Bersihkan semua tanda titik koma (;) terlebih dahulu
    clean_line=$(echo "$line" | sed 's/;//g')

    # Jika string hanya berisi angka 0 (hening), cetak garis datar
    if echo "$clean_line" | grep -q "^0\+$"; then
        echo "________"
    else
        # Jika ada musik, ubah rentang angka menjadi balok musik asli
        echo "$clean_line" | sed 'y/0123456789/ ▂▃▄▅▆▇███/'
    fi
done
