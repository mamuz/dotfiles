dotfiles
========

Set up a unix system on MacOS using dotfiles and an installation script.

## Requirements

Install Homebrew and Git

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
```

## Installation

Clone dotfiles to your home folder and run install script

```sh
git clone git://github.com/mamuz/dotfiles.git ~/dotfiles && cd ~/dotfiles && source install.sh
```

## Update

```sh
cd ~/dotfiles && source update.sh
```
