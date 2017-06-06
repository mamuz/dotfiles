export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

if [[ "$OSTYPE" = darwin* ]]; then
    export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
fi

export ZSH=$HOME/.oh-my-zsh

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
    aws brew colored-man-pages \
    docker docker-compose extract gem github \
    last-working-dir python \
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/id_rsa"
export ARCHFLAGS="-arch x86_64"

if [ "$TMUX" = "" ]; then tmux; fi
