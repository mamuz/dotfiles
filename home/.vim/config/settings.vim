filetype indent on

set number numberwidth=4
set mouse=r
set nobackup
set noswapfile
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set copyindent
set cindent
set shiftwidth=4
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set nowrap
set backspace=indent,eol,start
set ignorecase
set smartcase
set smarttab
set hidden
set history=1000
set undolevels=1000
set title
set visualbell
set noerrorbells
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>
set laststatus=2
set autoread
set display+=lastline
set tabpagemax=20
set ttyfast
set wildmode=list:longest,full

if exists("+undodir")
  set undodir=~/.vim/undodir
  set undofile
  if filewritable(&undodir) == 0
    call mkdir(&undodir, "p")
  endif
endif

if exists("+colorcolumn")
  set colorcolumn=80
endif

if has("mac")
  set clipboard=unnamed
elseif has("unix")
  set clipboard=unnamedplus
endif
