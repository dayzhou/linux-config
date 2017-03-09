# IBus
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx
# ibus-daemon -drx

# switch CapsLock and left Ctrl
xmodmap ~/.Xmodmap 2>/dev/null

xrandr --output DP1 --auto --primary --output VGA1 --auto --right-of DP1
feh --bg-scale ~/.i3/desktop.jpg

exec i3
