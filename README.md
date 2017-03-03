dotfiles
========

Set up a unix system using dotfiles and an installation script.
Check https://github.com/webpro/awesome-dotfiles for introductions.

## Requirements

### OSX

Install Homebrew and Git

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
```

### Ubuntu

Install Git

```sh
sudo apt-get install git
```

## Installation

Clone dotfiles to your home folder and run install script

```sh
git clone git://github.com/mamuz/dotfiles.git ~/dotfiles && cd ~/dotfiles && source install.sh
```

Open a new terminal and have fun.

## Update 

```sh
cd ~/dotfiles && source install.sh
```

## Appendix

This is optimized for MacOS/Ubuntu with Gnome and includes a dev environment
based on zsh, tmux, vim, google chrome browser, git, docker, aws and phpstorm.
