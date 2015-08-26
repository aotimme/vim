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

" Don't highlight based on '_' in markdown
" (because I want to use MathJax and it doesn't parse correctly)
autocmd BufNewFile,BufRead,BufEnter *.md :syn match markdownIgnore ".*_.*"

" Map fj to <ESC>
"imap fj <Esc><Right>
"vmap fj <Esc><Right>

" Map ; to :
"map ; :

if has("gui_running")
  " Anything for GUI version only in here
endif

if match($TERM, "screen") != -1
  let vimrplugin_screenplugin = 0
endif
let g:vimrplugin_insert_mode_cmds = 0

set backspace=indent,eol,start

let g:syntastic_cpp_include_dirs = [ '/usr/local/include', '/usr/local/include/eigen3' ]
" blowing it, so stop trying
"let g:syntastic_disabled_filetypes = [ 'cpp', 'c++' ]
" if want to toggle syntastic:
" `:SyntasticToggleMode`

" set html as filetype for Rhtml
au BufRead,BufNewFile *.Rhtml set filetype=html
