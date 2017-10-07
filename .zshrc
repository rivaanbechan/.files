source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast git-extras encode64 pip tmux vi-mode web-search)

if [ -f $ZSH/oh-my-zsh.sh ]; then
    source $ZSH/oh-my-zsh.sh
fi

# Customize to your needs
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob


#aliases I like
alias ls="ls --color=auto"
alias ll="ls -als"
alias lrt="ls -lrt"
alias v="vim"
alias l="less"

#set up nice left and right prompt
#export PROMPT=">"
#export RPROMPT=%d

#search through the history with up or down using first word
bindkey 'OA' history-beginning-search-backward
bindkey 'OB' history-beginning-search-forward

#fix terminal issues
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey '[1~' beginning-of-line
bindkey '[4~' end-of-line

#set the editor
export EDITOR='vim'

#Aliases
alias rcs='clear; ssh rcs'
alias gitlab='clear; ssh gitlab'
alias anc='clear; ssh anc'
alias rcsgateway='clear; ssh -A 192.168.68.2'
alias outsearch='clear; ssh outsearch'
alias outindex='clear; ssh outindex'
alias outnet='clear; ssh outnet'
alias idz='clear; ssh idz -p 2222'
alias vps='clear; ssh vps'
alias ls='ls -G'
alias ll='ls -als'
alias pass='clear; ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'
alias dc='clear && printf "\n" && date && printf "\n" && cal | grep --color -EC6 "\b$(date +%e | sed "s/ //g")"'
alias svlc='/Applications/VLC.app/Contents/MacOS/VLC -I rc'
alias gsoc='cd /Users/rivaan/gsoc'
alias tmp='cd /Users/rivaan/gsoc/tmp'
alias sps='cd /Applications/Splunk'
alias song='cd /Users/rivaan/Music/songwriting/'
alias gl='cd /Users/rivaan/gsoc/git/gitlab/'
alias gh='cd /Users/rivaan/gsoc/git/github/'
alias tmux="TERM=screen-256color-bce tmux"

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
