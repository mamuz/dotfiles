#!/usr/bin/env bash

brew update
brew upgrade
brew install brew-cask
brew upgrade brew-cask

brew install coreutils moreutils findutils
brew install gnu-sed --with-default-names
brew install zsh zsh-completions
brew tap homebrew/versions

if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
fi;

chsh -s /usr/local/bin/zsh;

brew install curl wget --with-iri
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep homebrew/dupes/openssh homebrew/dupes/screen
brew install mtr git-lfs tree tmux jmeter jq python awscli terminal-notifier

brew install docker docker-machine
brew cask install docker-compose

brew cask install google-chrome
brew cask install firefox
brew cask install phpstorm

brew cleanup
brew cask cleanup

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "Check https://powerline.readthedocs.io/en/latest/installation/osx.html#fonts-installation for powerline fonts."
echo "Done."
