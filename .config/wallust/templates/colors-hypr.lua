local module = {}

-- hyprland
module.active_border = "rgba({{color3 | strip}}aa) rgba({{color6 | strip}}aa) 45deg"
module.inactive_border = "rgba({{background | lighten(0.4) | strip}}aa)"
module.shadow = "rgba(1a1a1aee)"
module.hyprtasking_bg_color = "0xFFAF5Aaa"

-- hyprlock
module.outer_color = "rgba({{color1 | strip}}ee) rgba({{color4 | strip}}ee) 45deg"
module.check_color = "rgba({{color4 | strip}}ee) rgba({{color6 | strip}}ee) 120deg"
module.fail_color = "rgba({{color6 | strip}}ee) rgba({{color7 | strip}}ee) 40deg"

return module
