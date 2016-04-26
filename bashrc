#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias open="exec ~/.launch_and_exit.sh"
PS1='[\u@\h \W]\$ '

export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.4/site-packages
export PATH="$PATH:/opt/apache-maven-3.3.1/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export TERM='screen-256color'
export ECLIPSE_HOME="/usr/share/eclipse"
export ANDROID_HOME="/opt/android-sdk"

# export NVM_DIR="/home/augusto/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
