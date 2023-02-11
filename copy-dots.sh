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
  cp ./dunst ~/.config/ -rf
  cp ./nvim ~/.config/ -rf
  cp ./picom ~/.config/ -rf
  cp ./polybar ~/.config/ -rf
  cp ./bspm ~/.config/ -rf
  cp ./sxhkd ~/.config/ -rf
}

backup
copy
