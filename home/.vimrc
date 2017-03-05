source ~/.vim/config/plugins.vim
source ~/.vim/config/settings.vim
source ~/.vim/config/theme.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/mapping.vim

autocmd VimEnter * NERDTree

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
