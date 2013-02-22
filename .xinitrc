# for cursor for Xmonad
xsetroot -cursor_name left_ptr
# setxkbmap si for some reason does not work
setxkbmap si
# since there is no DE this needs to be added so Xresources are present
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# adding fonts for X11
xset +fp /usr/share/fonts/local
xset fp rehash
# for automounting with udiskie wrapper - automounting - udiskie
udiskie &
# for starting xmonad with startx 
exec ck-launch-session xmonad
# log xmonad
#xmonad 2> ~/xmonad.log
xmonad &> ~/xmonad.log

# background image:
feh --bg-scale MojiDokumenti/Slike/Wallpapers/xmonad/bg.png
