#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hibernate='sudo systemctl hibernate'
alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias p='sudo pacman'
alias Userv='ssh mika@192.168.0.114'
PS1='[\u@\h \W]\$ '
export YAD_OPTIONS
export EDITOR=nvim
export VISUAL=$EDITOR
export PATH="$HOME/.local/bin:$PATH:$HOME/go/bin"
