#!/bin/bash
B=$(dirname $0)
ln -s $B/.bash_profile ~/.bash_profile
ln -s $B/.bashrc ~/.bashrc
ln -s $B/.bash_aliases ~/.bash_aliases
ln -s $B/.bash_prompt ~/.bash_prompt
ln -s $B/.gitconfig ~/.gitconfig
ln -s $B/.gitignore ~/.gitignore

mkdir -p ~/scripts

ln -s ../$B/scripts/gitcleanup.sh ~/scripts/

#find $B/scripts -maxdepth 1 -type f -printf "%f\n" -exec \
#  echo {} \;
#  ln -s $B/scripts/{} ~/scripts/ \;

mkdir -p ~/.bash
cd ~/.bash
git clone https://github.com/jimeh/git-aware-prompt
