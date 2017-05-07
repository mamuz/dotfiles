# Interactive confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# set defaults for disk usage and disk free
alias df='df -H'
alias du='du -ch'

# Resume wget by default
alias wget='wget -c'

# Create parent directories on demand ##
alias mkdir='mkdir -pv'

# Get week number
alias week='date +%V'

# Get Software Updates
if [[ "$OSTYPE" = darwin* ]]; then
    alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; brew cask cleanup; sudo gem update --system; sudo gem update; sudo gem cleanup'
else
    alias update='sudo apt-get clean && sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove'
fi

# Empty the Trash on all mounted volumes and the main HDD.
if [[ "$OSTYPE" = darwin* ]]; then
    alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
else
    alias emptytrash='sudo rm -rf /home/*/.local/share/Trash/*/* >/dev/null 2>&1'
fi

# Lock the screen (when going AFK)
if [[ "$OSTYPE" = darwin* ]]; then
    alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
else
    alias afk="gnome-screensaver-command -l"
fi

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Hub alias to git
eval "$(hub alias -s)"

# Shortcuts
alias www='cd $HOME/Projects'
