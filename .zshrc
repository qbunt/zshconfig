# Path to your oh-my-zsh installation.
export ZSH=/Users/qbunt/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# compilation flags
export ARCHFLAGS="-arch x86_64"

# colors
export TERM="xterm-256color"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# go
export GOPATH=$HOME/Go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# export GOROOT=$HOME/Go
# export PATH=$PATH:$GOROOT/bin

# required docker exports
# not using in favor of docker for mac
# export DOCKER_TLS_VERIFY="1"
# export DOCKER_HOST="tcp://192.168.99.100:2376"
# export DOCKER_CERT_PATH="/Users/qbunt/.docker/machine/machines/default"
# export DOCKER_MACHINE_NAME="default"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="atom ~/.zshrc"
alias hyperconfig="atom ~/.hyper.js"
#alias python=python3

alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias extip="dig +short myip.opendns.com @resolver1.opendns.com"
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias reload="zsh --login"
alias reload!='. ~/.zshrc'
alias rollmac="sudo openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs"
alias cls='clear' # obvsly
alias dnuke='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
alias rpi_ip="arp -a | grep b8:27:eb | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'"

autoload -U promptinit; promptinit
prompt pure

#export PATH="/usr/local/sbin:$PATH"
#export PATH="$PATH:$HOME/.composer/vendor/bin"

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="/Users/qbunt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source /Users/qbunt/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
