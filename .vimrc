set nocompatible

"Indent settings
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
filetype indent plugin on

set showcmd "Show incomplete commands
set showmode "Show current mode
set wildmenu "Command line completion

set hidden
set ruler "Cuser at last line of screen/status line
set autoread
set nostartofline "Don't jump to first char when paging
set number "Line numbers

set ai "Autoindenting
set si "Smart indenting
set wrap "Work wrapping
set title "Show title in console title bar
set ttyfast "Smoother changes
syntax on "Turn on syntax highlighting

set showmatch "Highlights matching braces
set copyindent

set history=400
set background=dark
set cmdheight=2
set textwidth=90
set ignorecase

set smartcase "Smart about casing
set incsearch "Find next match while typing search
set hlsearch "Highlight search terms

set mouse=a "Three blind mice

colorscheme fluffy
"Favourites:
  "Translucent Backgrounds
    "candy 
  "Solid Backgrounds
    "bluez // calmar256-dark // fluffy // impact

filetype on
filetype plugin on
set grepprg=grep\ -nH\ $*

compiler gcc

set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif
