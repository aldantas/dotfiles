export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:/home/aldantas/go/bin
eval "$(pyenv init --path)"

export GOPATH=$HOME/go

setxkbmap -model abnt2 -layout br -variant abnt2 -option shift:both_capslock caps:escape
xmodmap ~/.Xmodmap
