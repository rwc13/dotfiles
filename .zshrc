# .zshrc
# Author: rwc13

# Theming {{{

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $HOME/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# }}}
# Settings {{{

export TERM=xterm-256color
export EDITOR="nvim"
export BROWSER="firefox"
export BROWSERCLI="w3m"
export MOVPLAY="mpv"
export PICVIEW="feh"
#export MANPAGER="nvim +set\ filetype=man -"    # nvim
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""      # vim

#export PATH
export PATH=${PATH}:/$HOME/scripts:/$HOME/bin:/$HOME/i3ass/src/ass

# }}}
# Aliases {{{

# Basic
alias k='exit'
alias c='clear'

# vim
#alias vim='nvim'
alias e='vim'
alias se='sudo vim'

# Directory
alias Z='source ~/.zshrc'
alias B='source ~/.bashrc'
alias ss='cd ~/scripts && ls'
alias D='cd ~/Downloads && ls'
alias gg='cd ~/git/dotfiles'
alias cdG='cd ~/git/dotfiles/'
alias ..='cd ..'
alias ls='ls --color=auto'
alias la='ls -ltra --color=auto'
alias lsb='ls -l --color=auto'
alias sch='cd ~/Dropbox/School && ls'
alias linux='cd ~/Dropbox/Linux/ && ls'

# Programs
alias x='ranger'
alias v='vtop'
alias nf='neofetch'
alias h='htop'
alias g='gedit'
alias clock='tty-clock -t -s -c'
alias Ping='ping -c 3 google.com'
alias starwars='telnet towel.blinkenlights.nl'

# Arch
alias Syu='sudo pacman -Syu'
alias Y='yaourt'
alias pac='sudo pacman -S'
alias pac-r='sudo pacman -R'
alias Log='tail -f /var/log/pacman.log'
alias Unlock='sudo rm /var/lib/pacman/db.lck'

# tmux
alias ta='tmux attach'

# Configs
alias cfv='vim ~/git/dotfiles/.vimrc'
alias cfi='vim ~/git/dotfiles/.config/i3/config'
alias cft='vim ~/git/dotfiles/.tmux.conf'
alias cfb='vim ~/git/dotfiles/.bashrc'
alias cfp='vim ~/git/dotfiles/.config/polybar/config'
alias cfz='vim ~/git/dotfiles/.zshrc'
alias cfst='vim ~/src/work/st/config.h'
alias cfx='vim ~/git/dotfiles/.Xresources'

# Git
alias cdg='cd ~/git/dotfiles'
alias gs='git status'

# Gentoo
alias HowLong='genlop -t'
alias OneShot='emerge --oneshot portage'
alias Rebuild='revdep-rebuild -v'
alias Sync='time emerge --sync'
alias S='emerge -s'
alias I='time emerge -av'
alias Uworld='time emerge --ask --verbose --update --newuse --deep @world'
alias Uworld-bdeps='time emerge --ask --newuse --update --deep --with-bdeps=y @world'
alias Esync='eix-sync'
alias Eupdate='eix --update'
alias cdP='cd /etc/portage && sudo su'
alias cdU='cd /etc/portage/package.use && sudo su'
alias cdB='cd /etc/portage/package.mask && sudo su'
alias cdK='cd /etc/portage/package.accept_keywords && sudo su'
alias cfm='sudo vim /etc/portage/make.conf'

# Portage
alias F='sudo tail -f /var/log/emerge-fetch.log'
alias E='sudo tail -f /var/log/emerge.log'

# Fonts
alias Fonts='fc-cache -vf ~/.fonts'

# X Resources Stuff
alias XTR='xrdb -merge ~/.Xresources'

# }}}
# ZSH Functions {{{

# start tmux
#if [[ -z "$TMUX" ]]; then
#	tmux;
#fi

# }}}

clear
