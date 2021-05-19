#Application management
alias inst='sudo apt-get install -y'
alias update='sudo apt-get update -y && sudo apt-get upgrade -y'
alias pacs='apt-cache search'
alias burn='sudo apt-get autoremove'

#General
alias ~='cd ~/'
alias ll='ls -AlhGrti'
alias lsa='ls -lah'
alias lt='ls --human-readable --size -1 -S --classify'
alias gh='history|grep'
alias cpv='rsync -ah --info=progress2'
alias please='sudo'

#Tmux
alias mux='tmux new -s main'
alias ta='tmux -2 a -t'
alias tn='tmux -2 new -s'
