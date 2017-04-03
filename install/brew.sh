#!/usr/bin/env bash

sudo softwareupdate -i -a

brew update
brew upgrade

brew install coreutils moreutils findutils htop-osx
brew install gnu-sed --with-default-names
brew install zsh zsh-completions
brew install mtr git-lfs tree tmux jmeter jq python awscli terminal-notifier ctags
brew install curl wget --with-iri
brew install vim --with-override-system-vi --with-python --with-ruby --with-perl

brew tap homebrew/versions
brew install homebrew/dupes/grep homebrew/dupes/openssh homebrew/dupes/screen


brew cask install google-chrome firefox
brew cask install mysqlworkbench sequel-pro phpstorm
brew cask install docker
brew cask install spectacle

brew cleanup
brew cask cleanup

if [ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]; then
    git clone https://github.com/powerline/fonts.git
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
fi
