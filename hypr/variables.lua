-- variables.lua
-- Mis Programas
terminal    = "kitty"
fileManager = "dolphin"
menu        = "wofi --show drun" -- Asegurate de tener instalado wofi u otro menú
mainMod     = "ALT"

-- Variables de Entorno
hl.env("XCURSOR_THEME", "Cursor-megumin")
hl.env("XCURSOR_SIZE", "50")

hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        force_default_wallpaper = 0,
    },
})