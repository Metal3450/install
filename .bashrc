# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export DISPLAY=:0.0
export DBUS_SESSION_BUS_ADRESS=unix:path=$XGG_RUNTIME_DIR/bus
eval $(dbus-launch --sh-syntax)
export TERM=xterm-256color
