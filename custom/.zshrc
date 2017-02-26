export PATH="$HOME/bin:$PATH";

for file in ~/.inc.*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status zsh_display_awsenv time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=""
POWERLEVE9K_VCS_HIDE_TAGS="false"
POWERLEVEL9K_SHOW_CHANGESET="false"
POWERLEVEL9K_TIME_FOREGROUND="000"
POWERLEVEL9K_TIME_BACKGROUND="011"
POWERLEVEL9K_AWS_FOREGROUND="007"
POWERLEVEL9K_AWS_BACKGROUND="166"
POWERLEVEL9K_STATUS_OK_FOREGROUND="000"
POWERLEVEL9K_STATUS_OK_BACKGROUND="010"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="007"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="001"
POWERLEVEL9K_VCS_FOREGROUND="000"
POWERLEVEL9K_VCS_BACKGROUND="010"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="000"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="010"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="009"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="010"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="000"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="010"
POWERLEVEL9K_DIR_HOME_FOREGROUND="007"
POWERLEVEL9K_DIR_HOME_BACKGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="007"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="012"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="007"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="012"
POWERLEVEL9K_CUSTOM_AWS="zsh_custom_aws"
POWERLEVEL9K_CUSTOM_AWS_FOREGROUND="007"
POWERLEVEL9K_CUSTOM_AWS_BACKGROUND="166"
POWERLEVEL9K_CUSTOM_DOCKER="zsh_custom_docker"
POWERLEVEL9K_CUSTOM_DOCKER_FOREGROUND="007"
POWERLEVEL9K_CUSTOM_DOCKER_BACKGROUND="052"

CASE_SENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
export ZSH=$HOME/.oh-my-zsh

# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
plugins=( \
    aws \
    branch \
    brew \
    composer \
    docker \
    docker-compose \
    git \
    git-extras \
    github \
    go \
    golang \
    iwhois \
    jsontools \
    vundle \
    ssh-agent \
)

if [ -f $ZSH/oh-my-zsh.sh ]; then
    source $ZSH/oh-my-zsh.sh
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fpath=(/usr/local/share/zsh-completions $fpath)

# Make vim the default editor.
export EDITOR='vim';

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';
