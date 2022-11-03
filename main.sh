#!/usr/bin/env bash

cleanup() {
  mv ~/.config/alacritty ~/.config/alacritty.bak
  mv ~/.config/dunst ~/.config/dunst.bak
  mv ~/.config/i3 ~/.config/i3.bak
  mv ~/.config/nvim ~/.config/nvim.bak
  mv ~/.config/picom ~/.config/picom.bak
  mv ~/.config/polybar ~/.config/polybar.bak
  mv ~/.config/rofi ~/.config/rofi.bak
}

copy() {
  cp ./alacritty ~/.config/alacritty.bak -r
  cp ./dunst ~/.config/dunst.bak -r
  cp ./i3 ~/.config/i3.bak -r
  cp ./nvim ~/.config/nvim.bak -r
  cp ./picom ~/.config/picom.bak -r
  cp ./polybar ~/.config/polybar.bak -r
  cp ./rofi ~/.config/rofi.bak -r
}

cleanup
copy
