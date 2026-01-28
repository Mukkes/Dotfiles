#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# For starting window manager without display manager.
# if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
#     exec startx
# fi

export EDITOR="/usr/bin/nvim"
export QT_STYLE_OVERRIDE=kvantum
#export QT_QPA_PLATFORMTHEME=kvantum-qt5
#export QT_QPA_PLATFORMTHEME=kvantum

export VCPKG_ROOT="$HOME/.local/share/vcpkg/"

# Default editor nvim for pacdiff
export DIFFPROG="/usr/bin/nvim"
