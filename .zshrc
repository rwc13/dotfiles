# .zshrc
# Author: rwc13

# Themeing {{{
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $HOME/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#}}}
# Settings {{{
export TERM=xterm-256color
export EDITOR="nvim"
export BROWSER="firefox"
export BROWSERCLI="w3m"
export MOVPLAY="mpv"
export PICVIEW="feh"
export SNDPLAY="mpv"

#export PATH
export PATH=${PATH}:/$HOME/scripts:/$HOME/bin

# }}}
# Alases {{{
alias vim='nvim'
alias Z='source ~/.zshrc'
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
alias cfz='~/git/dotfiles/.zshrc'
alias cdg='cd ~/git/dotfiles'
alias gs='git status'
alias ss='cd ~/scripts && ls'
alias D='cd ~/Downloads && ls'
alias Syu='sudo pamcan -Syu'
alias gg='cd ~/git/dotfiles'
alias cdG='cd ~/git/dotfiles/'
alias ..='cd ..'
alias clock='tty-clock -t -s -c'
alias Ping='ping -c 3 google.com'
alias cfs='vim ~/src/work/st/config.h'

# }}}
# ZSH Functions {{{
# start tmux
if [[ -z "$TMUX" ]]; then
	tmux;
fi

# }}}

clear
