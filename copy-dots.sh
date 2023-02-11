#!/usr/bin/env bash

backup() {
  mv ~/.config/dunst ~/.config/dunst.bak -f
  mv ~/.config/nvim ~/.config/nvim.bak -f
  mv ~/.config/picom ~/.config/picom.bak -f
  mv ~/.config/polybar ~/.config/polybar.bak -f
  mv ~/.config/bspwm ~/.config/bspwm.bak -f
  mv ~/.config/sxhkd ~/.config/sxhkd.bak -f
}

copy() {
  cp ./dots/dunst ~/.config/ -rf
  cp ./dots/nvim ~/.config/ -rf
  cp ./dots/picom ~/.config/ -rf
  cp ./dots/polybar ~/.config/ -rf
  cp ./dots/bspwm ~/.config/ -rf
  cp ./dots/sxhkd ~/.config/ -rf
}

backup
copy
