/opt/dropbox/dropboxd &
udiskie &
mpd &
mpdscribble --conf /home/peter/.config/mpdscribble/mpdscribble.conf &
feh --bg-scale ~/Pictures/door-into-twilight.png
picom -b &
dunst &
xmodmap -e 'keycode 135 = Super_R'
exec i3
