# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# npm
#unset MANPATH
#MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
#NPM_PACKAGES=$HOME/.npm-packages
#PATH=$NPM_PACKAGES/bin:$HOME/.local/bin:$HOME/bin:$PATH

# eclipse
PATH=~/eclipse:$PATH

PS1='\n________________________________\n[\u@\h] \W \$ '

export PATH
#export MANPATH
