# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
eval $(dbus-launch --sh-syntax)
alias cmus='HOME=/home/mark/cmus cmus'
