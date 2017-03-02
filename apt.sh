#!/usr/bin/env bash

sudo apt-get clean && sudo apt-get update && sudo apt-get -y upgrade

sudo apt-get install -y vim curl wget jq jmeter apache2-utils python3.4 zsh \
    linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get install -y --no-install-recommends apt-transport-https ca-certificates software-properties-common

curl -L -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py --user
sudo pip install --upgrade pip
sudo pip install --upgrade --user awscli
rm ./get-pip.py

if ! fgrep -q '/bin/zsh' /etc/shells; then
  echo '/bin/zsh' | sudo tee -a /etc/shells;
fi;
chsh -s /bin/zsh;

if [ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mkdir ~/.fonts
    mkdir -p ~/.config/fontconfig/conf.d
    mv PowerlineSymbols.otf ~/.fonts/
    fc-cache -vf ~/.fonts/
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
fi

if [ $(dpkg-query -W -f='${Status}' google-chrome-stable 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install -y google-chrome-stable
fi

if [ ! -f /opt/phpstorm/bin/phpstorm.sh ]; then
    sudo apt-get remove openjdk*
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install -y java-common oracle-java8-installer
    sudo apt-get install -y oracle-java8-set-default
    source /etc/profile
    wget https://download.jetbrains.com/webide/PhpStorm-2016.3.2.tar.gz
    tar xvf PhpStorm-*.tar.gz
    rm xvf PhpStorm-*.tar.gz
    sudo mv PhpStorm-*/ /opt/phpstorm/
    sudo ln -s /opt/phpstorm/bin/phpstorm.sh /usr/local/bin/phpstorm
fi

if [ $(dpkg-query -W -f='${Status}' docker-engine 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
    sudo add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"
    sudo apt-get update
    sudo apt-get install -y docker-engine
    sudo usermod -aG docker $(whoami)
fi

if [ ! -f /usr/local/bin/docker-compose ]; then
    curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi

sudo apt-get -y autoremove
