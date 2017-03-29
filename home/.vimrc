source ~/.vim/config/plugins.vim
source ~/.vim/config/settings.vim
source ~/.vim/config/theme.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/mapping.vim

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
