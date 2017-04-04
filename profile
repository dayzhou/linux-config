# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000


# enable color support of ls and also add handy aliases
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# Bazel completion
source ~/.bazel/bin/bazel-complete.bash


# npm setup
NPM_PACKAGES=$HOME/.npm-packages
PATH=$NPM_PACKAGES/bin:$PATH
unset MANPATH
MANPATH=$NPM_PACKAGES/share/man:$(manpath)


# go setup
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
PATH=$PATH:$GOPATH/bin:$GOROOT/bin


PS1='\n________________________________\n[\u@\h] \W : '

export MANPATH
export PATH=$HOME/bin:$PATH
