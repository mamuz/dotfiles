#!/usr/bin/env bash

brew update
brew upgrade
brew install brew-cask
brew upgrade brew-cask

brew install coreutils moreutils findutils
brew install gnu-sed --with-default-names
brew install zsh zsh-completions
brew tap homebrew/versions

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

if [ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi

if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
