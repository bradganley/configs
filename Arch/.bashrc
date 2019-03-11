#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ~='cd ~/'
alias nano='vim'
alias trans='rsync -Pve ssh'
alias update='yay -Syu --noconfirm'
alias inst='yay --noconfirm -S'
alias burn='yay -Rns'
alias ls='ls --color=auto'
alias pacs='yay -Ss'
alias svim='sudo -E vim'
alias vi='vim'
alias h='history'
alias mux='tmux new -s main'
alias supd='sudo pacman -Syyuu'
alias ncdu='ncdu --color dark'
alias bigclock='watch -t -n 1 "date '+%D%n%I:%M:%S' | figlet -k"|lolcat'
alias gitview='git log --graph --full-history --all --color --pretty=tformat:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m"'
alias cheat='/usr/bin/cheat'
alias weather='curl wttr.in'
alias whatthecom='git commit -am "$(whatcom)"'
alias null='/dev/null'
alias q='exit'
alias lsa='ls -a'
alias ....='cd ../../..;'
alias ...='cd ../..'
alias ..='cd ..'
alias ll='ls -AlhGrti'
alias ESC='cd ~/LocalGit/ESC618'
alias ta='tmux -2 a -t'
alias tn='tmux -2 new -s'
alias tm='tmux -2 attach-session || tmux -2 new-session'
alias nord='nordvpn connect'
alias nordd='nordvpn disconnect'
alias ramdrive='sudo mount -t tmpfs tmpfs /mnt -o size=512m'
alias fucking='sudo'
alias pleas='sudo'
alias fuck='pkill -9' 

export PATH=$PATH:~/scripts:/usr/local/go/bin 
export npm_config_prefix=~/.node_modules
export EDITOR='vim'
export VISUAL='vim'

cd () {
  builtin cd "$@" && ls -a
}

bk () {
  if [ -z $1 ]
  then
    echo "Type a filename, dumbass"
  else
    cp $1{,.bak}
  fi
}

md () { 
  mkdir -p "$@" && cd "$@"; 
}

function whatcom() {
  curl --silent --fail https://whatthecommit.com/index.txt
}

teatimer() {
  sleep $1;
  mplayer "$HOME/Music/Tornado.mp3" & notify-send 'YOUR TEA IS READY OH FUCK';
  curl -X POST "https://api.lifx.com/v1/lights/group_id:58da90e73566e43f037c7b6d59e56d24/effects/pulse" -H "Authorization: Bearer cfbc4b9dd981f5d99d486d22cb75a44535a8e616b9315580cac4ff5d5147ed86" -d 'period=1' -d 'cycles=4' -d 'color='$2; 
  fg
  exit
}

mksketch(){
  mkdir "$1";
  if [ "$2" = 'adr' ]
  then
    cp "$HOME/skeletons/adr.ino" "$1/$1.ino"
  elif [ "$2" = "web" ]
  then
    cp "$HOME/skeletons/webserv.ino" "$1/$1.ino"
  else
    cp "$HOME/skeletons/basic.ino" "$1/$1.ino"
  fi
  vim "$1/$1.ino"
}
bigtext(){
  if [ -z "$1" ]
    then
      curl --silent --fail curl 'artii.herokuapp.com/make?text='FUCK+IT'&font='univers''   
    else
      printf "$1\n"
      curl --silent --fail curl 'artii.herokuapp.com/make?text='$1'&font='univers''
    fi
}

branchdelete(){
 git branch -d $1
 git push --delete origin $1
 echo There you go;
}
