-- autostart.lua
hl.on("hyprland.start", function () 
    -- Aquí meteremos Waybar más adelante
    hl.exec_cmd("waybar &")
    hl.exec_cmd("hyprpaper &")
    hl.exec_cmd("~/.config/hypr/change_wallpaper.sh &")
    hl.exec_cmd("wl-paste --type text --watch cliphist store &")
    hl.exec_cmd("wl-paste --type image --watch cliphist store &")
end)