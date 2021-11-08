# Application management
alias inst='sudo apt-get install -y'
alias update='sudo apt-get update -y && sudo apt-get upgrade -y'
alias pacs='apt-cache search'
alias burn='sudo apt-get autoremove'

# General
alias ~='cd ~/'
alias ll='ls -AlhGrti'
alias lsa='ls -lah'
alias lt='ls --human-readable --size -1 -S --classify'
alias gh='history|grep'
alias cpv='rsync -ah --info=progress2'
alias please='sudo'
alias fucking='sudo'
alias cat='batcat'
alias src='source .bashrc'
alias ding='ping -i 5 -a'

# Utilities
alias pang='ping -i 10 -v -a'
alias mnts='mount | column -t'
alias h='history'
alias hgrep='history | grep'
alias netdis='sudo netdiscover -S -f -i eno1'

# Tmux
alias mux='tmux new -s main'
alias ta='tmux -2 a -t'
alias tn='tmux -2 new -s'
alias bin='nc termbin.com 9999'
nquick (){ sudo nmap -sV -T4 -O -F --version-light $@; }

# Misc
alias wttr='ansiweather -l belleville,illinois -u imperial -s false'
rtfm() { help $@ || info $@ || man $@ || curl "http://cheat.sh/$@"; }

extip(){ ip=$(curl -s http://api.ipify.org);
	echo "Public IP address is $ip"
}

ch() { curl "http://cheat.sh/$@"; }
