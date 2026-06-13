local mainMod = "SUPER" -- Set "Windows" key as main modifier


-- Applications
local terminal = "kitty"
local fileManager = "thunar"
local menu = "fuzzel"
local browser = "firefox"
local vpn = "clash-verge"
local screenshot = "flameshow gui"

hl.bind(mainMod .. " + ALT + V", hl.dsp.exec_cmd("copyq toggle"), { description = "Open the clipboard" })
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser), { description = "Open the browser" })
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(vpn), { description = "Open the vpn" })
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu), { description = "Open the meun" })
hl.bind("Print", hl.dsp.exec_cmd(screenshot), { description = "Take a screenshot" })
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager), { description = "Open the file manager" })

-- Actions
hl.bind(mainMod .. " + F2", hl.dsp.exec_cmd("pkill waybar || true && waybar"), { description = "Reload waybar" })
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd("hyprlock"), { description = "Lock screen"})
hl.bind(mainMod .. " + C", hl.dsp.window.close(), { description = "Close current window"})
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"), { description = "Quit hyprland"})

-- Windows
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating window "})
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo(), { description = "Toggle pseudo window"})
hl.bind(mainMod .. " + TAB", hl.dsp.exec_cmd("cyclenext"), { description = "Cycle switch to next window"})
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left"}), { description = "Focus left window"})
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right"}), { description = "Focus right window"})
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "up"}), { description = "Focus up window"})
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "down"}), { description = "Focus down window"})
-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspaces
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i}))
  hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(mainMod .. " + CTRL + S", hl.dsp.focus({ workspace = "e+0" }))
-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Submap Resize
hl.bind("ALT + R", hl.dsp.submap("resize"))
hl.bind("ALT + R", hl.dsp.exec_cmd("notify-send -i 'face-smile' 'Submap actived!' 'Switch to Resize mode'"))

hl.define_submap("resize", function()
  hl.bind("right", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })
  hl.bind("left", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
  hl.bind("up", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })
  hl.bind("down", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })

  hl.bind("escape", hl.dsp.submap("reset"))
  hl.bind("escape", hl.dsp.exec_cmd("notify-send -i 'face-smile' 'Submap deactived!' 'Switch to Global mode'"))
end)

-- Submap Layout Switcher
hl.bind("ALT + L", function()
  hl.bind("S", hl.dsp.exec_cmd("hyprctl keyword general:layout scrolling"))
  hl.bind("M", hl.dsp.exec_cmd("hyprctl keyword general:layout master"))
  hl.bind("D", hl.dsp.exec_cmd("hyprctl keyword general:layout dwindlw"))

  hl.bind("escape", hl.dsp.submap("reset"))
  hl.bind("escape", hl.dsp.exec_cmd("notify-send -i 'face-smile' 'Submap deactived!' 'Switch to Global mode'"))
end)
