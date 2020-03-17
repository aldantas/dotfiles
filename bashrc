#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias open="exec ~/.launch_and_exit.sh"
alias vim='vim --servername vim'
alias python='python3'
# alias mount_macalan='sshfs aldantas@macalan.c3sl.ufpr.br:/home/ppginf/aldantas ~/ufpr_unix/ -ocache=no'
alias mount_nas="sshfs aldantas@200.17.212.90:/mnt/NAS /home/augusto/NAS -o ssh_command='ssh -J aldantas@macalan.c3sl.ufpr.br'"
alias libra='ssh -CY aldantas@200.17.212.90 -J aldantas@macalan.c3sl.ufpr.br'
alias loki='ssh -CY aldantas@200.17.212.82 -J aldantas@macalan.c3sl.ufpr.br'
alias hydra='ssh -CY aldantas@200.17.212.91 -J aldantas@macalan.c3sl.ufpr.br'
PS1='[\u@\h \W]\$ '

# Disable ctrl-S
stty -ixon

# export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.7/site-packages
# export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/site-packages
export PATH="$PATH:/opt/apache-maven-3.3.1/bin"
export PATH="$PATH:/var/lib/snapd/snap/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export TERM='xterm-256color'
export ECLIPSE_HOME="/usr/share/eclipse"

export ANDROID_HOME="/opt/android-sdk"
export FZF_DEFAULT_COMMAND='fd --type f'

# export CAFFE_ROOT="/home/augusto/caffe"
# export LD_LIBRARY_PATH=$CAFFE_ROOT/build/lib/:$LD_LIBRARY_PATH
# export PYTHONPATH=$CAFFE_ROOT/python:$PYTHONPATH

#export NVM_DIR="/home/augusto/.nvm"
export HISTCONTROL=ignoredups
export HISTSIZE=1000000
# export NVM_DIR="/home/augusto/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# eval $(thefuck --alias)
