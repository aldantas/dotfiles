#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

setxkbmap -model abnt2 -layout br -variant abnt2 -option shift:both_capslock caps:ctrl_modifier
if command -v xcape &> /dev/null
then
	xcape -e 'Caps_Lock=Escape'
fi

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx &> /dev/null
fi
