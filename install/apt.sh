#!/usr/bin/env bash

sudo apt-get clean && sudo apt-get update && sudo apt-get -y upgrade

sudo apt-get install -y vim curl wget jq jmeter mysql-workbench \
    apache2-utils python3.4 zsh tmux htop exuberant-ctags \
    linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get install -y --no-install-recommends apt-transport-https ca-certificates software-properties-common

sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git

curl -LO https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py --user
sudo pip install --upgrade pip
sudo pip install --upgrade --user awscli
rm get-pip.py

curl -LO https://github.com/github/hub/releases/download/v2.3.0-pre9/hub-linux-amd64-2.3.0-pre9.tgz
tar -xvf hub-linux-*.tgz
sudo mv hub-linux-*/bin/hub /usr/local/bin/hub
chmod +x /usr/local/bin/hub
rm -rf hub-linux-*

if [ ! -f $HOME/.fonts/PowerlineSymbols.otf ]; then
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mkdir $HOME/.fonts
    mkdir -p $HOME/.config/fontconfig/conf.d
    mv PowerlineSymbols.otf $HOME/.fonts/
    fc-cache -vf $HOME/.fonts/
    mv 10-powerline-symbols.conf $HOME/.config/fontconfig/conf.d/
fi

if [ $(dpkg-query -W -f='${Status}' google-chrome-stable 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install -y google-chrome-stable
fi

if [ ! -f /opt/phpstorm/bin/phpstorm.sh ]; then
    sudo apt-get remove 'openjdk*'
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install -y java-common oracle-java8-installer
    sudo apt-get install -y oracle-java8-set-default
    source /etc/profile
    wget https://download.jetbrains.com/webide/PhpStorm-2017.1.tar.gz
    tar -xvf PhpStorm-*.tar.gz
    rm PhpStorm-*.tar.gz
    sudo mv PhpStorm-*/ /opt/phpstorm/
fi

if [ $(dpkg-query -W -f='${Status}' docker-engine 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
    sudo add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"
    sudo apt-get update
    sudo apt-get install -y docker-engine
    sudo groupadd docker
    sudo usermod -aG docker $(whoami)
fi

if [ ! -f /usr/local/bin/docker-compose ]; then
    curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi

sudo apt-get -y autoremove
