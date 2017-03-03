set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
" Plugin 'stanangeloff/php.vim'
" Plugin 'shawncplus/phpcomplete.vim'
" Plugin 'othree/html5.vim'
" Plugin 'pangloss/vim-javascript'
call vundle#end()

filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
