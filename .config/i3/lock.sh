#!/usr/bin/env bash

tmpbg='/home/zlyphe/.config/i3/Wallpaper.jpg'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 100% -scale 1000% -blur 0x8 "$tmpbg"
convert "$tmpbg" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
