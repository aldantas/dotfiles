#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias open="exec ~/.launch_and_exit.sh"
alias vim='vim --servername vim'
alias mount_pegasus='sshfs pegasus:/media/sharedDisk ~/sharedDisk -ocache=no'
alias mount_macalan='sshfs aldantas@macalan:/home/ppginf/aldantas ~/ufpr_unix/ -ocache=no'
PS1='[\u@\h \W]\$ '

# Disable ctrl-S
stty -ixon

export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.6/site-packages
export PATH="$PATH:/opt/apache-maven-3.3.1/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export TERM='screen-256color'
export ECLIPSE_HOME="/usr/share/eclipse"
export ANDROID_HOME="/opt/android-sdk"

export HISTCONTROL=ignoredups
export HISTSIZE=1000000
# export NVM_DIR="/home/augusto/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
