#!/bin/sh
#~/.bash_aliases

# Default to human readable figures
alias df='df -h'
alias du='du -h'


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -hlF'
alias lla='ls -AhlF'
alias la='ls -CFA'
alias l='ls -CF'

# Other aliases
alias vm='ssh jakob@192.168.56.101'
alias gitclean='~/scripts/gitcleanup.sh'

alias gs='git status'
alias gd='git diff'
