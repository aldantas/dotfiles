#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

setxkbmap -model abnt2 -layout br -variant abnt2 -option shift:both_capslock caps:escape
xmodmap ~/.Xmodmap
# if command -v xcape &> /dev/null
# then
# 	xcape -e 'Caps_Lock=Escape' -t 200
# fi

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx &> /dev/null
fi
