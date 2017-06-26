# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="kardan"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

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
plugins=(gitfast git-extras archlinux encode64 pip ruby tmux vi-mode web-search)

if [ -f $ZSH/oh-my-zsh.sh ]; then
    source $ZSH/oh-my-zsh.sh
fi

# Customize to your needs
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob
#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/vanboxel/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall

#aliases I like
alias ls="ls --color=auto"
alias ll="ls -l"
alias lrt="ls -lrt"
alias v="vim"
alias l="less"
alias pacman="sudo pacman"
alias sudo='sudo '

# gurps
alias gurps="$HOME/Downloads/gcs-4.0.1-linux/gcs"

# gitcrypt
alias gitcrypt="$HOME/proj/git-encrypt/gitcrypt"

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

#bind capslock to escape

if [[ -z $DISPLAY ]]
then
else
    xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
fi
#add to PATH
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin

# add to LD_LIBRARY_PATH because #STEAM BULLSHIT
# maybe doesn't help
# steam seems to work, hopefully don't need this slowness
# still throws bullshit errors
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib32:/usr/lib

# stream to twitch
streaming() {
    INRES="1920x1080" # input resolution
    OUTRES="1920x1080" # output resolution
    FPS="15" # target FPS
    GOP="30" # i-frame interval, should be double of FPS, 
    GOPMIN="15" # min i-frame interval, should be equal to fps, 
    THREADS="2" # max 6
    CBR="1000k" # constant bitrate (should be between 1000k - 3000k)
    QUALITY="ultrafast"  # one of the many FFMPEG preset
    AUDIO_RATE="44100"
    STREAM_KEY=`cat /home/vanboxel/.twitch_key`
    SERVER="live-jfk" # twitch server in nyc, see http://bashtech.net/twitch/ingest.php for list
    AUDIO_SRC="pulse" # because pulse doesn't work for this?

    ffmpeg -f x11grab -s "$INRES" -r "$FPS" -i :0.0 -f alsa -i $AUDIO_SRC -f flv -ac 2 -ar $AUDIO_RATE \
      -vcodec libx264 -g $GOP -keyint_min $GOPMIN -b:v $CBR -minrate $CBR -maxrate $CBR -pix_fmt yuv420p\
      -s $OUTRES -preset $QUALITY -tune film -acodec libmp3lame -threads $THREADS -strict normal \
      -bufsize $CBR "rtmp://$SERVER.twitch.tv/app/$STREAM_KEY"
}
