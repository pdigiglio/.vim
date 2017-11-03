" No vi compatibiliby
set nocompatible

" Enable filetype plugins
filetype plugin on

" Interface
set number
" Always show the current position
set ruler

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No sound on errors
set noerrorbells
" Flash on errors
set novisualbell

syntax enable

filetype indent on
" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Always show the status line
set laststatus=2

" Allow backspacing on everything in insert mode
set backspace=indent,eol,start

set incsearch
set hlsearch

" Allow mouse
if has('mouse')
    set mouse=a
endif

" Allow for undo also when a buffer is closed and reopened
set undofile
" TODO: try not to hard-code this
set undodir=~/.vim/undodir

" Configuration for plug.vim, the plugin manager
" https://github.com/junegunn/vim-plug
call plug#begin()
" Plugin for C/C++ syntax
Plug 'WolfgangMehner/c-support',         { 'for' : ['c', 'cpp'] }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for' : 'cpp' }

" NERDTree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'

" Plug-in to align text
Plug 'vim-scripts/Align'

" Interface to TaskWarrior
" Plug 'blindFS/vim-taskwarrior'

call plug#end()
