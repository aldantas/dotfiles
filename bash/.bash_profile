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
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
