#!/bin/bash

# Le damos 2 miserables segundos a hyprpaper para que termine de arrancar
sleep 2

# Cambiamos los espacios por guiones bajos para que Linux no llore!
WALLPAPER_DIR="/home/miguel/Descargas/Fondos_de_pantalla/"

while true; do
    # Elige una imagen al azar de la carpeta
    RANDOM_PIC=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.webp" \) | shuf -n 1)

    # Vacía la RAM de fondos anteriores antes de que el PC muera
    hyprctl hyprpaper unload all

    # Carga el nuevo fondo
    hyprctl hyprpaper preload "$RANDOM_PIC"
    hyprctl hyprpaper wallpaper ",$RANDOM_PIC"

    # Espera 5 minutos (300 segundos)
    sleep 300
done