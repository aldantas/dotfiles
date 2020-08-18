# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias open="exec ~/.launch_and_exit.sh"
alias vim='vim --servername vim'
alias vi='vim --servername vim'
alias python='python3'

alias mount_nas="sshfs aldantas@200.17.212.90:/mnt/NAS /home/augusto/nas/ -o ssh_command='ssh -J aldantas@macalan.c3sl.ufpr.br'"
alias mount_macalan="sshfs aldantas@macalan.c3sl.ufpr.br:/home/ppginf/aldantas /home/augusto/macalan/"
alias libra='ssh -CY aldantas@libra.inf.ufpr.br -J aldantas@macalan.c3sl.ufpr.br'
alias loki='ssh -CY aldantas@loki.inf.ufpr.br -J aldantas@macalan.c3sl.ufpr.br'
alias gemini='ssh -CY gemini@gemini.inf.ufpr.br -J aldantas@macalan.c3sl.ufpr.br'
alias hydra='ssh -CY aldantas@hydra.inf.ufpr.br -J aldantas@macalan.c3sl.ufpr.br'

export PATH="$PATH:/var/lib/snapd/snap/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export TERM='xterm-256color'
export FZF_DEFAULT_COMMAND='fd --type f'

export HISTCONTROL=ignoredups
export HISTSIZE=1000000
