# Path to your oh-my-zsh installation.
export ZSH=/Users/darinhaener/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git rails capistrano rake tmux tmuxinator)

# User configuration

export PATH="/Users/darinhaener/.avn/bin:/Users/darinhaener/.rbenv/shims:/Users/darinhaener/.rbenv/bin:/Users/darinhaener/bin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Users/darinhaener/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
eval "$(ssh-agent)"
ssh-add

alias ls='ls -GFh'

# Git Aliases
alias git=hub
alias gpm='git push origin master'
alias gps='git push origin staging'
alias ga='git add . -A'
alias gc='git commit'
alias gs='git status'
alias gpr='git pull-request'
function gdb { git branch -D "$1"; git push origin :"$1" }
function gp { git push -u origin "$1" }

# Other Aliases
alias dl='tail -n200 development.log'
alias tt='name=`hostname` echo -n -e "\033]0;$name\007"'
alias vu='vagrant up'
alias vd='vagrant destroy -f'
alias su='sidekiq -C config/sidekiq.yml'
alias be='bundle exec'
alias dp='bundle exec cap production deploy'

# Node version manager
source ~/.nvm/nvm.sh

# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
source /usr/local/bin/virtualenvwrapper.sh
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# Use Vim mode on the command line
bindkey -v
export KEYTIMEOUT=1

# Add some tmux aliases
alias tml="tmux list-sessions"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"

# Set the default editor for tmuxinator
export EDITOR='vim'

# Alias the vim command to use the brew installed vim
alias vim='/usr/local/Cellar/vim/7.4.712_1/bin/vim'
alias vi='vim'

# Add the command history search
source /Users/darinhaener/zsh-history-substring-search.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

unsetopt nomatch

# Pyenv stuff
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
