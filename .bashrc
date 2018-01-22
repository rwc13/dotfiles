#!/bin/bash

force_colored_prompt=yes

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

for f in "${HOME}/.bash/"*; do
    . $f
done

# anti-DM

if [[ -z $DISPLAY ]]; then

  # wait two seconds for input from user
  # start desired environment.
  # if none selected, defaults to startx (i3)
  # find way to kill x and return to login when mint is active.
  # sdfsdfsdf slas
  read -rsn1 -t2 input
  if [ -n "$input" ]; then
    case $input in
      1 ) start=bash ;; # bash
      2 ) startx > /dev/null 2>&1 ;;
      # 3 ) sudo systemctl start lightdm.service > /dev/null 2>&1 ;;
    esac
  fi

  [ -z "$input" ] && startx > /dev/null 2>&1
  
fi

# aliases

alias ls='ls --color=auto'
alias la='ls -ltra --color=auto'
alias k='exit'
alias lsb='ls -lsb --color=auto'
alias x='ranger'
alias v='vtop'
alias nf='neofetch'
alias h='htop'
alias e='vim'
alias se='sudo vim'
alias g='gedit'
alias B='source ~/.bashrc'
alias c='clear'
alias cfv='vim ~/.vimrc'
alias cfi='vim ~/.config/i3/config'
alias cft='vim ~/.tmux.conf'
alias cfb='vim ~/.bashrc'

alias ..='cd ..'
alias clock='tty-clock -t -s -c'

clear
