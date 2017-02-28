#!/usr/bin/env bash

sudo apt-get clean && sudo apt-get update && sudo apt-get upgrade

sudo apt-get --yes --force-yes install vim curl wget jq jmeter apache2-utils python zsh \
    linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get install -y --no-install-recommends \
    apt-transport-https ca-certificates software-properties-common

sudo apt-get autoremove

python3 get-pip.py --user
pip install awscli --upgrade --user

if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
fi;

chsh -s /usr/local/bin/zsh;

if [ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mv PowerlineSymbols.otf ~/.fonts/
    fc-cache -vf ~/.fonts/
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
fi

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

sudo apt-get remove openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install java-common oracle-java8-installer
sudo apt-get install oracle-java8-set-default
source /etc/profile
wget https://download-cf.jetbrains.com/webide/PhpStorm-2016.1.2.tar.gz
tar xvf PhpStorm-2016.1.2.tar.gz
sudo mv PhpStorm-145.1616.3/ /opt/phpstorm/
sudo ln -s /opt/phpstorm/bin/phpstorm.sh /usr/local/bin/phpstorm

echo "Done. Don't forget to install Docker, Docker Compose"
