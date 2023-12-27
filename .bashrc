#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias dotfiles='/usr/bin/git --git-dir="$HOME/git/dotfiles/" --work-tree="$HOME"'

source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main
