hl.on("hyprland.start", function()
  hl.exec_cmd("swww-daemon")
  hl.exec_cmd("mako & waybar & copyq")
  hl.exec_cmd("/usr/lib/hyprpolkitagent/hyprpolkitagent")
  hl.exec_cmd("blueman-applet & nm-applet")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("fcitx5")
  hl.exec_cmd("notify-send -i 'face-smile' 'Welcome back my friend!' 'Hyprland activated, good luck!'")

  -- load all the plugins installed
  hl.exec_cmd("hyprpm reload -n")

  -- wechat
  hl.exec_cmd("echo 'Xft.dpi:144' | xrdb -merge")
end)

-- Themes
hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'")
