local wallust = require("$HOME/.config/hypr/themes/wallust.lua")

hl.monitor({
  output = "eDP-1",
  mode = "1920x1080@60.01Hz",
  position = "0x0",
  scale = "1.33"
})


-- general config
hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 10,
    border_size = 2,
    col = {
      active_border = wallust.active_border,
      inactive_border = wallust.inactive_border
    },
    resize_on_border = false,
    allow_tearing = false
  },
  decoration = {
    rounding = 10,
    rounding_power = 2,

    active_opacity = 1.0,
    inactive_opacity = 1.0,

    shadow = {
        enabled = true,
        range = 4,
        render_power = 3,
        color = "rgba(1a1a1aee)"
    },

    blur = {
        enabled = true,
        size = 7,
        passes = 3,
        ignore_opacity = true,

        noise = 0.08,
        contrast = 1.5,
        xray = false,
        new_optimizations = true,
    }
  }
})

-- layout config
hl.config({
  -- dwindle = {
  --   preserve_split = true
  -- },
  -- master = {
  --   new_status = "master",
  -- },
  scrolling = {
    fullscreen_on_one_column = true,
    column_width = 0.95,
    focus_fit_method = 0
  }
})

-- misc config
hl.config({
  misc = {
    force_default_wallpaper = -1,
    disable_hyprland_logo = false
  }
})
