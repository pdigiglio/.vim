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
set modeline

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
set undodir=~/.vim/.undo//
" Set a swap directory
set directory=~/.vim/.swap//
" Set a backup directory
set backupdir=~/.vim/.backup//

" Open vimrc
nnoremap <leader>v  :tabnew $MYVIMRC<cr>
" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent loadview
augroup END
