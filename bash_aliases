# some more ls aliases
alias lshelp="ls --help |more"
alias lsmore='ls |more'
alias ll='ls -alFh'
alias llmore='ll |more'
alias la='ls -A'
alias lamore='la |more'
alias lsl='ls -l' 
alias lslmore='ls -lh |more'
alias l='ls -CF'
alias lmore='l |more'
alias df='df -h'
alias du='du -h'
alias dus='du -s'
alias rmr='rm -r' 
alias cls='clear'
alias free="free -m"
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias ps='ps -eaf'
alias wcl='wc -l'
#
alias dsk='cd ~/Desktop'
alias proj='cd ~/projects/speech'
alias vis='sudo vim'
alias pyhttp='python -m SimpleHTTPServer'
alias listpkg='repoquery -q -l'
alias listgcc='echo | gcc -v -x c++ -E -'
alias emptytrash='rm -rf ~/.local/share/Trash/files/*'
#
#
function towiener {
    command scp -P 5219 $1 dz828@10.12.8.4:~
}
function fromwiener {
    command scp -P 5219 dz828@10.12.8.4:$1 .
}
#
function todev {
    command scp $1 dz121@10.12.8.29:~
}
function fromdev {
    command scp dz121@10.12.8.29:$1 .
}
#
alias scr1='screen -dR 1'
alias scr2='screen -dR 2'
alias scr3='screen -dR 3'
alias scr4='screen -dR 4'
#
function mkcd {
    command mkdir $1 && cd $1
}
#
