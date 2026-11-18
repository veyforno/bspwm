#!/usr/bin/env bash

# Hentikan semua bar yang sedang berjalan
killall -q polybar

# Tunggu sampai proses benar-benar berhenti
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Jalankan bar utama bernama 'main'
polybar main 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar berhasil dijalankan..."
