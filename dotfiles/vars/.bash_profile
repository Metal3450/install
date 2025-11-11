# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export XDG_SESSION_CLASS=user
export XDG_SESSION_TYPE=wayland
export XDG_SEAT=seat0
export DBUS_SESSION_BUS_ADRESS=unix:path=$XDG_RUNTIME_DIR/bus
export TERM=xterm-256color
export DISPLAY=0.0
export LD_PRELOAD=/usr/lib/apulse/libpulse.so.0
