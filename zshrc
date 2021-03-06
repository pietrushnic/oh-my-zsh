# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="geoffgarside"

# Example aliases
alias zshcfg="vim ~/.zshrc"
export CDPATH="$HOME/projects/2017"
export TERM=screen-256color
export LESS_TERMCAP_md=$(tput setaf 7)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput setaf 82)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput setaf 45)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS="-X"
export EDITOR=vim
export PATH=${HOME}/bin:${PATH}
export CUCUMBER_COLORS=comment=cyan
export PYTHONSTARTUP=~/.pythonrc
export MC_SKIN=$HOME/.mc/solarized.ini

# ccache
export PATH="/usr/lib/ccache:$PATH"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

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
plugins=(git debian tmux tmuxinator taskwarrior)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# dh_make setup
DEBEMAIL="piotr.krol@3mdeb.com"
DEBFULLNAME="Piotr Król"
export DEBEMAIL DEBFULLNAME

SSH_VAULT_VM="vault"
if [ "$SSH_VAULT_VM" != "" ]; then
       export SSH_AUTH_SOCK=/home/user/.SSH_AGENT_$SSH_VAULT_VM
       rm -rf "$SSH_AUTH_SOCK"
       sudo -u user /bin/sh -c "umask 177 && ncat -k -l -U '$SSH_AUTH_SOCK' -c 'qrexec-client-vm $SSH_VAULT_VM qubes.SshAgent' &"
fi

# Qubes OS
export QUBES_GPG_DOMAIN=vault
