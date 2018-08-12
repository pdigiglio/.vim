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

" Syntax highlighting for offlineIMAP
Plug 'pdigiglio/offlineimaprc.vim'

call plug#end()
