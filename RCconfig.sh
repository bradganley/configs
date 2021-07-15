#!/bin/bash
mv ~/.bashrc ~/bak.bashrc
mv ~/.bash_aliases ~/bak.bash_aliases
ln -s .bashrc ~/.bashrc
ln -s .bash_aliases ~/.bash_aliases
chmod 777 .bashrc
chmod 777.bash_aliases
source .bashrc
