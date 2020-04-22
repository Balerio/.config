
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

alias vrc="vim ~/.config/.vimrc"
alias rb="source ~/.config/.bashrc"
alias start="explorer.exe"

alias p="cd /mnt/d/Projects"
alias ll="ls -hNg --color=auto --group-directories-first"
alias ls='ls --color=auto'

alias corona='curl https://corona-stats.online?top=10'

export PATH=$PATH:~/.config/scripts

function cs () {
    cd "$@" && ll
}

alias cd="cs"

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


# PS1='[ \u@\h ] \w\n$ '
export PS1=$'[ \[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] ] \[\e[36m\]\w\[\e[m\] \u03bb '

if [ $HOSTNAME = "LIT000796" ]; then
    alias eros="cd /mnt/c/Projects/EROS"
fi

if [ $HOSTNAME = "Vader" ]; then
    alias p="cd /mnt/d/Projects"
fi

# AUTOSTART TMUX
[[ -z "$TMUX" && -n "$USE_TMUX" ]] && {
    [[ -n "$ATTACH_ONLY" ]] && {
        tmux a 2>/dev/null || {
            cd && exec tmux
        }
        exit
    }

    tmux new-window -c "$PWD" 2>/dev/null && exec tmux a
    exec tmux
}
