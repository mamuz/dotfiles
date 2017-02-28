#!/usr/bin/env bash

brew update
brew upgrade

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
brew install git-lfs tree tmux jmeter jq python awscli terminal-notifier
brew install docker docker-compose

brew cleanup

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "Check https://powerline.readthedocs.io/en/latest/installation/osx.html#fonts-installation for powerline fonts."
echo "You installed coreutils, so don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`."
echo "Done. Don't forget to install PhpStorm and Google Chrome Browser."
