set nocompatible

"Indent settings
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set fileformat=unix "File mode is unix
set fileformats=unix,dos,mac "Detects files in that order
filetype indent plugin on

set showcmd "Show incomplete commands
set showmode "Show current mode
set wildmenu "Command line completion
set undofile "Store undo state when files closed
set cursorline "Highlights current line

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

" Colours for nested parens
hi javaParen1 guifg=#AAFFFF
hi javaParen2 guifg=#88BBBB

let g:is_posix = 1 "Shell scripts highlighted as bash

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

"Set syntax highlighting on when terminal has colours
if &t_Co > 2 || has("gui_running")
    syntax on
endif

"Unicode support (vim.wikia.com/wiki/Working_With_Unicode)
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,latin1
endif

augroup vimrc
    "Jump to last known cursor position
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") && !&diff |
        \   exe "normal! g'\"" |
        \ endif

" Highlight Class and Function names
function! s:HighlightFunctionsAndClasses()
  syn match cCustomFunc      "\w\+\s*\((\)\@="
  syn match cCustomClass     "\w\+\s*\(::\)\@="
  syn match cCustomDFunc     "\w\+\s*\(!.\{-}(\)\@="
  syn match cCustomDFuncUFCS ".\w\+\s*\(!.\{-}\)\@="

  hi def link cCustomFunc      Function
  hi def link cCustomDFunc     Function
  hi def link cCustomDFuncUFCS Function
  hi def link cCustomClass     Function
endfunction

" Highlight Class and Function names, D specific
function! s:HighlightDFunctionsAndClasses()
  syn match cCustomDFunc     "\w\+\s*\(!.\{-}(\)\@="
  syn match cCustomDFuncUFCS ".\w\+\s*\(!.\{-}\)\@="

  hi def link cCustomDFunc     Function
  hi def link cCustomDFuncUFCS Function
endfunction

" TODO: this should:
" a) not be called for every filetype
" b) be in a separate plugin
au vimrc Syntax * call s:HighlightFunctionsAndClasses()
au vimrc Syntax d call s:HighlightDFunctionsAndClasses()

