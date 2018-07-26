#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval $(thefuck --alias)
alias trans='rsync -Pve ssh'
alias update='yay -Syu --noconfirm'
alias inst='yay --noconfirm -S'
alias burn='yay -Rns'
alias ls='ls --color=auto'
alias pacs='yay -Ss'
alias svim='sudo -E vim'
alias supd='sudo pacman -Syyuu'
alias ncdu='ncdu --color dark'
alias bigclock='watch -t -n 1 "date '+%D%n%I:%M:%S' | figlet -k"|lolcat'
alias gitview='git log --graph --full-history --all --color --pretty=tformat:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m"'
