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
  cp ./alacritty ~/.config/alacritty.bak
  cp ./dunst ~/.config/dunst.bak
  cp ./i3 ~/.config/i3.bak
  cp ./nvim ~/.config/nvim.bak
  cp ./picom ~/.config/picom.bak
  cp ./polybar ~/.config/polybar.bak
  cp ./rofi ~/.config/rofi.bak
}

cleanup
copy
