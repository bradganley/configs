#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias update='yay -Syu --noconfirm'
alias inst='yay --noconfirm -S'
alias burn='yay -Rns'
alias ls='ls --color=auto'
alias pacs='yay -Ss'
alias svim='sudo -E vim'
alias supd='yay --Syyuu'

alias mineserv="java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.2.jar nogui"


eval $(thefuck --alias)
PATH=$PATH:~/scripts
