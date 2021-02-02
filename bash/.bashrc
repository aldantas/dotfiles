# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias open="exec ~/.launch_and_exit.sh"
alias vim='vim --servername vim'
alias vi='vim --servername vim'
alias python='python3'
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

alias mount_nas="sshfs loki:/mnt/NAS /home/augusto/nas/ -o ssh_command='ssh -4',reconnect,ServerAliveInterval=15,ServerAliveCountMax=3"
alias mount_macalan="sshfs macalan:/home/ppginf/aldantas /home/augusto/macalan/ -o ssh_command='ssh -4'"
alias libra='ssh -CY libra'
alias loki='ssh -CY loki'
alias gemini='ssh -CY gemini'
alias hydra='ssh -CY hydra'

export PATH="$PATH:/var/lib/snapd/snap/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export TERM='xterm-256color'
export FZF_DEFAULT_COMMAND='fd --type f'

export HISTCONTROL=ignoredups
export HISTSIZE=1000000
