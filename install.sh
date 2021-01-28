#!/usr/bin/env bash

git pull origin master
mkdir $HOME/.ssh/

sudo softwareupdate -i -a

brew update
brew upgrade

brew install coreutils moreutils findutils htop gettext joe lftp gnu-sed mtr tree tmux jq python ctags curl wget zsh zsh-completions vim
brew install jmeter gist terraform kubectl kubernetes-helm
brew install --cask google-chrome firefox sequel-pro phpstorm docker google-cloud-sdk

brew cleanup

if [ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]; then
    git clone https://github.com/powerline/fonts.git
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
fi

if [ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
fi

if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

cp -R -i ./home/.* $HOME
vim +PluginUpdate +PluginClean +qall

if [ ! -f $HOME/.vim/colors/solarized.vim ]; then
    mkdir -p $HOME/.vim/colors
    cp $HOME/.vim/bundle/vim-colors-solarized/colors/solarized.vim $HOME/.vim/colors/
fi

echo "Done."
exec $SHELL -l
