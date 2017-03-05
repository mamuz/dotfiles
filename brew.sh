#!/usr/bin/env bash

workingdir="$PWD"

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
brew install mtr git-lfs tree tmux jmeter jq python awscli terminal-notifier ctags

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

mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core
cd .. && rm -rf ycm_build
cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime && npm install --production
cd "$workingdir"
