#!/usr/bin/env bash

cat ./banner

backup() {
  mv ~/.config/dunst ~/.config/dunst.bak -f
  mv ~/.config/nvim ~/.config/nvim.bak -f
  mv ~/.config/picom ~/.config/picom.bak -f
  mv ~/.config/polybar ~/.config/polybar.bak -f
}

copy() {
  cp ./dunst ~/.config/dunst -rf
  cp ./nvim ~/.config/nvim -rf
  cp ./picom ~/.config/picom -rf
  cp ./polybar ~/.config/polybar -rf
}

backup
copy
