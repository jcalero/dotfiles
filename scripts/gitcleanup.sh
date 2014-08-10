#!/bin/bash

BRANCH='fork';

printf 'Branches to delete:\n';
git branch --merged | grep -v '^* master$' | grep -v '^  master$';

cleanupfinal() {
    printf '\nDeleting merged branches from remote ['$BRANCH']\n';
    git remote prune $BRANCH;
    git branch -r --merged | grep -v origin/ | grep -v master | grep -v staging | sed 's/'$BRANCH'\///' | xargs -n 1 git push --delete $BRANCH;
    exit;
}

cleanupremote(){
    printf '\nRemote branches to clean up:\n';
    git branch -r --merged | grep -v origin/ | grep -v master | grep -v staging | sed 's/'$BRANCH'\///';
    while true
    do
        read -n1 -r -p 'Continue? [y/n]: ' choice3
        case "$choice3" in
          n|N) printf '\nAborting\n';break;;
          y|Y) cleanupfinal;;
            *) printf '\nResponse not valid, [y/n]\n';;
        esac
    done
}

cleanup(){
    printf '\nCleaning up\n';
    git branch --merged | grep -v '^* master$' | grep -v '^  master$' | xargs git branch -d;
    while true
    do
        read -n1 -r -p 'Do you also want to delete them from remote ['$BRANCH']? [y/n]: ' choice2
        case "$choice2" in
          n|N) printf '\nExiting\n';break;;
          y|Y) cleanupremote;;
              *) printf '\nResponse not valid, [y/n]\n';;
        esac
    done
}

while true
do
    read -n1 -r -p 'Are you sure you want to delete these branches? [y/n]: ' choice
    case "$choice" in
      n|N) printf '\nAborting\n';break;;
      y|Y) cleanup ;break;;
      *) printf '\nResponse not valid, [y/n]\n';;
    esac
done
