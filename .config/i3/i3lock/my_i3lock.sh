#!/bin/bash

#----------------------------------------
#
#----------------------------------------

color='#2b303c'
Pic="$HOME/Pictures/Wallpapers/arctic-landscape.png"
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

    i3lock -i $Pic              \
    --clock		                \
    --indicator		            \
    --pass-volume-keys	        \
    \
    --insidever-color=$C        \
    --ringver-color=$V          \
    \
    --insidewrong-color=$C      \
    --ringwrong-color=$W	    \
    \
    --inside-color=$C           \
    --ring-color=$green	        \
    --line-color=$B             \
    --separator-color=$white    \
    \
    --verif-color=$C            \
    --verif-text=". . ."	    \
    --wrong-color=$T            \
    --wrong-text="Incorrect"    \
    --time-color=$T             \
    --noinput-text="No Input"   \
    --date-color=$T             \
    --keyhl-color=$W            \
    --bshl-color=$W      
}


bar_lock(){

    i3lock -i $Pic	\
    --clock		\
    --bar-indicator	\
    --pass-volume-keys	\
    --bar-direction='2'	\
    --bar-width='25'	\
    --bar-max-height='100'  \
    --bar-orientation='vertical'    \
    --timesize='50'	\
    --datesize='20'	\
    --wrongsize='50'	\
    --noinputtext="No Input"    \
    --veriftext=""	\
    --wrongtext="Incorrect" \
    --verif-color=$B     \
    --wrong-color=$T     \
    --time-color=$T      \
    --date-color=$T      \
    --keyhl-color=$aqua  \
    --bshl-color=$aqua   \
    --bar--color=$B
}

#--------------------------
#$ScreenShot #uncomment this
#convert $Pic -blur $Blur $Pic #uncomment this

#--------------------------
#convert $Icon -resize 150x150 $Icon_resize 
#composite $Icon_resize $Pic -gravity center $Pic 

#--------------------------
ring_lock

