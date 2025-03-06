#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec startx
fi

export EDITOR="/usr/bin/nvim"
export QT_STYLE_OVERRIDE=kvantum
#export QT_QPA_PLATFORMTHEME=kvantum-qt5
#export QT_QPA_PLATFORMTHEME=kvantum
