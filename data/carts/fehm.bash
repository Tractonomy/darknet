#!/bin/bash
shopt -s extglob

 gridW=5
 gridH=6

 file=!(*@(.txt|.names|.bash))
 W=$(identify -ping -format '%w' $file)
 H=$(identify -ping -format '%h' $file)
 LW=$(($W * $gridW))
 LH=$(($H * ($gridH + 1)))
 feh -i --index-info '' --thumb-width $W --thumb-height $H \
   --limit-width $LW --limit-height $LH .
