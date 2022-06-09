#!/bin/bash

#Set keyboard layout
setxkbmap -layout us -variant intl &

#xrandr resolution
xrandr -s 1920x1080 &


#Set wallpaper
#feh --big-fill ~/.config/qtile/wallpapers/kyoto1.jpg &
~/.fehbg &

#picom
picom &

#nm-applet
nm-applet &

#polkit
/usr/lib/polkit-1 &

#mpd
mpd ~/.config/mpd/mpd.conf &

