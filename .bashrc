#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Alias for dotfiles git repo
alias dotfiles='/usr/bin/git --git-dir="$HOME/Git/Dotfiles/" --work-tree="$HOME"'

# Git complition for dotfiles alias
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main

# Ignore case tab completion
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
