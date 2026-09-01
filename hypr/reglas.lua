--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- 1. La Ley Antimonopolio (Para que ninguna app se maximice sin tu permiso)
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" }, -- El ".*" significa "a todas maldita sea"
    suppress_event = "maximize",
})

-- La redada a la mafia de Electron (Atrapa múltiples clases a la vez)
hl.window_rule({
    name  = "domar-electron",
    match = { class = "^(brave|google-chrome|Code|obsidian|antigravity)$" },
    tile  = true,
})
-- 4. El parche para la basura de XWayland (Evita que las apps viejas se traben al arrastrarlas)
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})
