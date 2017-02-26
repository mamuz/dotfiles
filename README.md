dotfiles
========

Set up a unix system using dotfiles and an installation script.
Check https://github.com/webpro/awesome-dotfiles for introductions.

## Requirements

- install zsh as a new shell: https://github.com/robbyrussell/oh-my-zsh
- install powerlevel9k theme: https://github.com/bhilburn/powerlevel9k
- install fonts for powerlevel9k theme https://github.com/powerline/fonts

## Installation

###  Set zsh as your default shell

```sh
chsh -s $(which zsh)
```

### Clone dotfiles to your home folder and run install script

```sh
git clone git://github.com/mamuz/dotfiles.git ~/dotfiles && cd ~/dotfiles && source install.sh
```

Open a new terminal and have fun.

## Update

```sh
cd ~/dotfiles && source install.sh
```

## Appendix

Current setup is optimized for:

- aws cli
- docker & docker-compose
- tmux
- go language
- python
- git & github
- php composer
