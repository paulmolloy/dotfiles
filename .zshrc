# Set up the prompt
PS1='%n@%m %~$ '
autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Theme
ZSH_THEME="agnoster"

# Antigen
#
# Load Antigen
source "$HOME/.antigen.zsh"


# Load Antigen configurations
antigen init /home/pablo/.antigenrc

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Load bundles from external repos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Select theme
#antigen theme denysdovhan/spaceship-prompt

# Load the theme.
#antigen theme robbyrussell
antigen theme gentoo

# Tell Antigen that you're done.
antigen apply

eval `ssh-agent` &>/dev/null
ssh-add ~/.ssh/molloy_gitlab &>/dev/null
ssh-add ~/.ssh/paulmolloy_github &>/dev/null

export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}

#if [[ $TMUX_PANE ]]; then
#  HISTFILE=$HOME/.bash_history_tmux_${TMUX_PANE:1}
#fi



export PATH=$PATH:~/repos/automation-scripts
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GOBIN=$GOPATH/bin
export SPARK_HOME=/usr/local/spark
#export PATH=/home/pablo/anaconda3/bin:$PATH

# Einride stuff
export GOPRIVATE="github.com/einride/*"
