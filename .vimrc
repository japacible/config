set nocompatible
set showcmd

filetype on
filetype plugin on
syntax edable
set grepprg=grep\ -nH\ $*

set autoindent
set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

" English spellchecking; not on by default
if version >= 700
    set spl=en spell
    set nospell
endif

" gcc all the days
compiler gcc

" Line numbers
set number

" Ignore case
set ignorecase

" Highlight search terms
set hlsearch

set hidden
set ruler
set autoread
set lazyredraw
set number
set history=200
set background=dark
set cmdheight=2
set noerrorbells
set visualbell
set mouse=a
set textwidth=90
set showmatch
set copyindent

" Color scheme
if has("gui_running")
    colorscheme inkpot
    set guioptions-=T
    set guifont=Terminus\ 9
else
    colorscheme metacosm
endif


