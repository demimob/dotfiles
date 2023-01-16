#!/bin/bash

swaybg --image ~/Pictures/Fanart/Hoshimachi.Suisei.full.2921199.jpg &
waybar &
nm-applet --indicator &
pasystray &
wireplumber &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
