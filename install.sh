#!/usr/bin/env bash

git pull origin master
mkdir ~/.ssh/
source ./install/brew.sh

if [ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi

if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cp -R -i ./home/.* ~
vim +PluginUpdate +PluginClean +qall

if [ ! -f $HOME/.vim/colors/solarized.vim ]; then
    mkdir -p $HOME/.vim/colors
    cp $HOME/.vim/bundle/vim-colors-solarized/colors/solarized.vim $HOME/.vim/colors/
fi

echo "Done."
exec $SHELL -l
