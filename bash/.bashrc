# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# open() {
# 	if command -v thunar &> /dev/null
# 	then
# 		thunar $1
# 	else
# 		xdg-open $1
# 	fi
# 	exit
# }

alias open='xdg-open'

alias ls='ls --color=auto'
alias vim='vim --servername vim'
alias vi='vim --servername vim'
alias python='python3'

alias mount_nas="sshfs loki:/mnt/NAS $HOME/nas/ -o ssh_command='ssh -4',reconnect,ServerAliveInterval=15,ServerAliveCountMax=3"
alias mount_macalan="sshfs macalan:/home/ppginf/aldantas $HOME/macalan/ -o ssh_command='ssh -4'"
alias libra='ssh -CY libra'
alias loki='ssh -CY loki'
alias gemini='ssh -CY gemini'
alias hydra='ssh -CY hydra'
# alias pyenv_init='eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"'

# if [[ $TMUX ]]; then
# 	pyenv_init
# fi

export TERM='xterm-256color'
export FZF_DEFAULT_COMMAND='fd --type f'

export HISTCONTROL=ignoredups
export HISTSIZE=1000000

export PATH="$HOME/.pyenv/bin:$HOME/.local/bin:$HOME/go/bin:$PATH"
export PATH="/home/aldantas/Downloads/sonar-scanner-4.7.0.2747-linux/bin/:$PATH"
export PATH="/home/aldantas/go/bin/:$PATH"
export MANPAGER="vim -M +MANPAGER -"

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=$PATH:~/.npm-global/bin

[[ -s "/home/aldantas/.gvm/scripts/gvm" ]] && source "/home/aldantas/.gvm/scripts/gvm"

alias gitifx='vim -p `git diff --name-only | uniq`'
