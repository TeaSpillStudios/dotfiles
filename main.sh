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
  mv ./alacritty ~/.config/alacritty.bak
  mv ./dunst ~/.config/dunst.bak
  mv ./i3 ~/.config/i3.bak
  mv ./nvim ~/.config/nvim.bak
  mv ./picom ~/.config/picom.bak
  mv ./polybar ~/.config/polybar.bak
  mv ./rofi ~/.config/rofi.bak
}

cleanup
copy
