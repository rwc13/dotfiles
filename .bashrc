#!/bin/bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;
esac

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

#(cat ~/.cache/wal/sequences &)

# start tmux
if [[ -z "$TMUX" ]]; then
	tmux;
fi

# path
#PATH="$HOME/scripts:$PATH"
#export PATH
export PATH=${PATH}:/$HOME/scripts:/$HOME/bin

#printf '\e]710;%s\007' "xft:Fixedsys Excelsior 3.01\-L2 Mono:style=Regular"

# aliases

alias vim='nvim'
alias ls='ls --color=auto'
alias la='ls -ltra --color=auto'
alias k='exit'
alias lsb='ls -l --color=auto'
alias x='ranger'
alias v='vtop'
alias nf='neofetch'
alias h='htop'
alias e='vim'
alias se='sudo vim'
alias g='gedit'
alias B='source ~/.bashrc'
alias c='clear'
alias cfv='vim ~/git/dotfiles/.vimrc'
alias cfi='vim ~/git/dotfiles/.config/i3/config'
alias cft='vim ~/git/dotfiles/.tmux.conf'
alias cfb='vim ~/git/dotfiles/.bashrc'
alias cfp='vim ~/git/dotfiles/.config/polybar/config'
alias cdg='cd ~/git/dotfiles'
alias gs='git status'
alias ss='cd ~/scripts && ls'
alias D='cd ~/Downloads && ls'
alias Syu='sudo pamcan -Syu'
alias gg='cd ~/git/dotfiles'
alias ..='cd ..'
alias clock='tty-clock -t -s -c'
alias Ping='ping -c 3 google.com'
alias cfs='vim ~/src/work/st/config.h'

# DO NOT DELETE LMAO

# Prompt
#
#timer_start() {
#  timer=${timer:-$(date +%s%N | cut -b1-13)}
#}
#
#prompt_generator() {
#  # regular colors
#
#  local K="\[\033[0;30m\]"    # black
#  local R="\[\033[0;31m\]"    # red
#  local G="\[\033[0;32m\]"    # green
#  local Y="\[\033[0;33m\]"    # yellow
#  local B="\[\033[0;34m\]"    # blue
#  local M="\[\033[0;35m\]"    # magenta
#  local C="\[\033[0;36m\]"    # cyan
#  local W="\[\033[0;37m\]"    # white
#
#  # emphasized (bolded) colors
#  local BK="\[\033[1;30m\]"
#  local BR="\[\033[1;31m\]"
#  local BG="\[\033[1;32m\]"
#  local BY="\[\033[1;33m\]"
#  local BB="\[\033[1;34m\]"
#  local BM="\[\033[1;35m\]"
#  local BC="\[\033[1;36m\]"
#  local BW="\[\033[1;37m\]"
#
#  # reset
#  local RESET="\[\033[0;37m\]"
#
#  # get time
#  local milli=$(($(date +%s%N | cut -b1-13) - $timer))
#  case $((
#    milli >= 0 && milli <= 20   ? 1 :
#    milli > 20 && milli <= 100  ? 2 :
#    milli > 100 && milli <= 250 ? 3 :
#    milli > 250 && milli <= 500 ? 4 :
#    milli > 500 && milli <= 999 ? 5 :
#    milli > 999 && milli <= 2000 ? 6 : 7)) in
#      (1) psc="${G}" ;;
#      (2) psc="${Y}" ;;
#      (3) psc="${C}" ;;
#      (4) psc="${B}" ;;
#      (5) psc="${M}" ;;
#      (6) psc="${R}" milli=$((milli/1000));;
#      (7) psc="${R}" milli=$((milli/1000));;
#  esac
#
#  # pad ms or seconds with zeroes, so string length always is 3.
#  local timmy=$(printf "%03d" $milli)
#
#  # create a string with the first charcter of each folder in path
#  local pth="$(pwd)"
#  pth=${pth/${HOME}/'~'}
#  local newpth=""
#  local d=
#  apa=( ${pth//\//' '} )
#
#  for d in ${apa[@]}; do
#    [[ $d = '~' ]] && newpth='~' && continue
#    # if first char is '.', grab the second
#    [[ ${d:0:1} = '.' ]] \
#      && newpth+="/${d:1:1}" || newpth+="/${d:0:1}"
#  done
#
#  PS1="${psc}${timmy} ${W}${newpth} ${B}>${RESET} "
#  unset timer
#}
#
## https://unix.stackexchange.com/a/65312
#trap 'timer_start' DEBUG
#PROMPT_COMMAND=prompt_generator

# Commands on source
clear
