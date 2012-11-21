set nocompatible

"Indent settings
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

set showcmd "Show incomplete commands
set showmode "Show current mode

set hidden
set ruler
set autoread
set number "Line numbers

syntax on "Turn on syntax highlighting

set noerrorbells "Ding.
set visualbell

set showmatch
set copyindent

set history=400
set background=dark
set cmdheight=2
set textwidth=90
set number "Line numbers on
set ignorecase

set incsearch "Find next match while typing search
set hlsearch "Highlight search terms

filetype on
filetype plugin on
set grepprg=grep\ -nH\ $*

compiler gcc

