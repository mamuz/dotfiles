#!/usr/bin/env bash

sudo softwareupdate -i -a

brew update
brew upgrade
brew install brew-cask
brew upgrade brew-cask

brew install coreutils moreutils findutils
brew install gnu-sed --with-default-names
brew install zsh zsh-completions
brew tap homebrew/versions

brew install htop-osx curl wget --with-iri
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep homebrew/dupes/openssh homebrew/dupes/screen
brew install mtr git-lfs tree tmux jmeter jq python awscli terminal-notifier ctags

brew cask install google-chrome
brew cask install firefox
brew cask install phpstorm

brew cleanup
brew cask cleanup

echo "Install Docker For Mac from https://docs.docker.com/docker-for-mac/install/"
