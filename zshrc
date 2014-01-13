# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="geoffgarside"

# Example aliases
alias zshcfg="vim ~/.zshrc"
alias ohmyzsh="cd $HOME/src/oh-my-zsh"
alias taskwarrior="cd $HOME/src/taskwarrior"
alias .newsbeuter="cd $HOME/src/newsbeuter-conf"
alias .dotfile="cd $HOME/src/dotfiles"
alias bootstrap="cd $HOME/src/bootstrap"
alias .eartchquake="cd $HOME/src/earthquake-conf"
alias .mutt="cd $HOME/src/mutt-conf"
alias .rem="cd $HOME/src/rem"
alias .spf13="cd $HOME/src/spf13-vim"
alias .mux="cd $HOME/src/tmuxinator-conf"
alias .weechat="cd $HOME/src/weechat"
alias offlineimap="$HOME/.mutt/offlineimap"
export TERM=screen-256color
export LESS_TERMCAP_md=$(tput setaf 7)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput setaf 82)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput setaf 45)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export EDITOR=vim
export PATH=${PATH}:${HOME}/bin
export CUCUMBER_COLORS=comment=cyan
ulimit -c unlimited

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_TMUX_FIXTERM="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [[ -n "$SSH_CONNECTION" ]]; then
    eval $(/usr/bin/dbus-launch --sh-syntax)
    eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
fi
