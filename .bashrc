#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hibernate='sudo systemctl hibernate'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
PS1='[\u@\h \W]\$ '
export YAD_OPTIONS
