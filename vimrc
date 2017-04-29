" assogiate *.pgf with LaTeX filetype
au BufRead,BufNewFile *.pgf setfiletype tex

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

" no sound on errors
set noerrorbells
" no flash on errors
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

set incsearch
set hlsearch

" Allow mouse
set mouse=a

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

call plug#end()