# Path to your oh-my-zsh installation.
export ZSH=/Users/qbunt/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="bullet_train"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"
# ZSH_THEME="avit"

# bullettrain mods
BULLETTRAIN_RUBY_SHOW="false"
BULLETTRAIN_NVM_SHOW="true"
BULLETTRAIN_GO_SHOW="true"
BULLETTRAIN_CUSTOM_MSG="👊"
BULLETTRAIN_CUSTOM_BG="red"
BULLETTRAIN_GIT_COLORIZE_DIRTY="true"
BULLETTRAIN_TIME_12HR="true"
BULLETTRAIN_VIRTUALENV_SHOW="false"
BULLETTRAIN_GIT_SHOW="false"
BULLETTRAIN_DIR_EXTENDED='0'
BULLETTRAIN_TIME_SHOW="false"

# spaceship theme mods
SPACESHIP_RUBY_SHOW="false"

# powerlevel theme mods
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status context)
# POWERLEVEL9K_STATUS_VERBOSE=false
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

alias rpi_ip="arp -a | grep b8:27:eb | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'"

# homebrew cask directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Composer exposure to the PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='atom'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# go path
export GOPATH=$HOME/Go
PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export TERM="xterm-256color"

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/qbunt/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

export PIP_REQUIRE_VIRTUALENV=true
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="atom ~/.zshrc"

#export PATH="/usr/local/sbin:$PATH"
#export PATH="$PATH:$HOME/.composer/vendor/bin"

export NVM_DIR="/Users/qbunt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
