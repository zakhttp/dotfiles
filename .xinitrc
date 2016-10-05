#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrdb ~/.Xresources
xrdb -merge ~/.Xresources
xrandr --dpi 143
exec i3
#exec awesome
#exec gnome-session

[ `type -P xcalib` ]; then
    # Use the color profile
    xcalib ~/.colorprofiles/apple.icc
fi;

if [ `type -P xbindkeys` ]; then
    # Load custom keyboard key bindings
    xbindkeys
fi;

	
