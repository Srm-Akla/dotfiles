#!/bin/bash

#----------------------------------------
#
#----------------------------------------

color='#2b303c'
Pic="$HOME/Pictures/Wallpapers/4K_No_Logo_K2215.jpg"
#Icon="$HOME/.local/share/backgrounds/44594.png"
#Icon_resize="$HOME/.config/i3/icon.png"

#--------------------------------
# To get screenshot with blur, uncomment these variables

#Pic="$HOME/.config/i3/lock.png" #uncomment this
#Blur="0x8" #uncomment this
#ScreenShot=$(scrot $Pic) #uncomment this
#-----------------------------------

B='#000000ff'  # blank
C='#504945ca'  # clear ish
D='#ff00ffcc'  # default
T='#d3d0c8ff'  # text
W='#f2777aff'  # wrong
V='#6699ccff'  # verifying

green='#99cc99ff'
red='#f2777aff'
blue='#6699ccff'
white='#f2f0ecff'
#faded orange E8DCB9
#some orage E6B89C
#some red ED9390
#deep taup 6D5959
#blue saffire 385870

ring_lock(){

    swaylock -lei $Pic	\
    --indicator-radius	50	\
    --indicator-thickness 25	\
    --inside-ver-color=$C	\
    --ring-ver-color=$V		\
    --inside-wrong-color=$C	\
    --ring-wrong-color=$W	\
    --inside-color=$C		\
    --ring-color=$blue		\
    --line-color=$B		\
    --text-color=$T		\
    --separator-color=$white	\
    --key-hl-color=$W		\
    --layout-bg-color=$V	\
    --bs-hl-color=$W      
}

#--------------------------
#$ScreenShot #uncomment this
#convert $Pic -blur $Blur $Pic #uncomment this

#--------------------------
#convert $Icon -resize 150x150 $Icon_resize 
#composite $Icon_resize $Pic -gravity center $Pic 

#--------------------------
ring_lock
#rm $Pic #$Icon_resize #uncomment this

