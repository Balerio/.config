
stty -ixon #disable ctrl-s and ctrl-q
# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b ~/.config/.mydircolors`"
fi
# alias ls="ls -lah --color=auto"
alias wp="~/.config/scripts/wp"

alias v="vim"
alias r="ranger"
alias y="yay"
alias w="curl wttr.in/Pomezia"

alias p="cd ~/d/Projects"
alias ll="ls -hNg --color=auto --group-directories-first"
alias ls='ls --color=auto'

export PATH=$PATH:~/.config/scripts

# remove backgroud colors from ls
#eval "$(dircolors -p | \
#    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
#    dircolors /dev/stdin)"

# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# make tab autcomplete case insensitive
bind "set completion-ignore-case on"


PS1='[\u@\h \W]\$ '

if [ $HOSTNAME = "LIT000796" ]; then
    alias eros="cd /mnt/c/Projects/EROS; clear; ls -hNg --color=auto --group-directories-first"

fi
