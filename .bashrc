#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias update='trizen -Syu --noconfirm'
alias inst='trizen --noconfirm -S'
alias burn='trizen -Rns'
alias ls='ls --color=auto'
alias pacs='trizen -Ss'
alias svim='sudo -E vim'
alias supd='trizen --Syyuu'

alias mineserv="java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.2.jar nogui"


eval $(thefuck --alias)
PATH=$PATH:~/scripts
