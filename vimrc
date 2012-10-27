set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
"colorscheme desert
set smartindent
set number
set ruler
set cursorline
set autoindent
:syntax on
set noswapfile

call pathogen#infect()

" For R plugin
set nocompatible
filetype plugin on
filetype indent on
set ls=2

" Remove all trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e

" Map fj to <ESC>
imap fj <Esc><Right>
vmap fj <Esc><Right>

" Map ; to :
map ; :
