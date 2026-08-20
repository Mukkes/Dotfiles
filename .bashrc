#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_ps ]; then
    . ~/.bash_ps
fi

# Alias for dotfiles git repo
alias dotfiles='/usr/bin/git --git-dir="$HOME/git/dotfiles/" --work-tree="$HOME"'

# Git complition for dotfiles alias
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main

# Ignore case tab completion
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
