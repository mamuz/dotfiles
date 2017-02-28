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

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

echo "Done. Don't forget to install Docker, Docker Compose, PhpStorm and Google Chrome Browser."
