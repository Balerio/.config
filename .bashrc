alias ls="ls -lah --color=auto"
alias wp="~/.config/scripts/wp"

alias v="vim"
alias r="ranger"
alias y="yay"
alias w="curl wttr.in/Pomezia"

alias p="cd ~/d/Projects"

# export PATH=$PATH:~/.config/scripts

# remove backgroud colors from ls
eval "$(dircolors -p | \
    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
    dircolors /dev/stdin)"

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

