#!/bin/sh

#Pic="$HOME/.config/i3/lock.png"
Pic2="$HOME/.local/share/backgrounds/signal-2021-01-12-223950.jpeg"
#Icon="$HOME/.local/share/backgrounds/44594.png"
#Icon_resize="$HOME/.config/i3/icon.png"
#Blur="0x8"
#ScreenShot=$(scrot $Pic)

B='#00000000'  # blank
C='#504945ca'  # clear ish
D='#ff00ffcc'  # default
T='#fbf1c7ff'  # text
W='#cc241dff'  # wrong
V='#d79921ff'  # verifying

aqua='#689d6aff'
#faded orange E8DCB9
#some orage E6B89C
#some red ED9390
#deep taup 6D5959
#blue saffire 385870

ring_lock(){

    i3lock -i $Pic2	 \
    --clock		 \
    --indicator		 \
    --pass-volume-keys	\
    \
    --insidevercolor=$B   \
    --ringvercolor=$V    \
    \
    --insidewrongcolor=$C \
    --ringwrongcolor=$W	\
    \
    --insidecolor=$C      \
    --ringcolor=$aqua        \
    --linecolor=$B       \
    --separatorcolor='#B4F779ff'   \
    \
    --verifcolor=$C        \
    --veriftext=""	    \
    --wrongcolor=$T        \
    --wrongtext="Incorrect" \
    --timecolor=$T        \
    --noinputtext="No Input"    \
    --datecolor=$T        \
    --keyhlcolor=$W       \
    --bshlcolor=$W        
}


bar_lock(){

    i3lock -i $Pic2	 \
    --clock		 \
    --bar-indicator	 \
    --pass-volume-keys	\
    \
    --bar-direction='0'	\
    --bar-width='25'	\
    --bar-max-height='100'  \
    --bar-orientation='horizontal'    \
    \
    --timesize='50'    \
    --datesize='15'    \
    --wrongsize='50'    \
    \
    --noinputtext="No Input"    \
    --veriftext=""	    \
    --wrongtext="Incorrect" \
    \
    --verifcolor=$B        \
    --wrongcolor=$T        \
    --timecolor=$T        \
    --datecolor=$T        \
    --keyhlcolor=$aqua       \
    --bshlcolor=$aqua    \
    --bar-color=$B
}

#$ScreenShot
#convert $Pic -blur $Blur $Pic
#convert $Icon -resize 150x150 $Icon_resize 
#composite $Icon_resize $Pic -gravity center $Pic 
ring_lock
#rm $Pic2 #$Icon_resize

