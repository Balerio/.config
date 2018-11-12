" Change leader key
let mapleader = ","

set cursorline
set number relativenumber
set nocompatible
filetype plugin on

syntax on
set tabstop=2

" Enable mouse srolling
set mouse=a

call plug#begin('~/.vim/plugged')

" Syntax Highligh
Plug 'vim-syntastic/syntastic'

" dinamic colorscheme with pywal
Plug 'dylanaraps/wal.vim'

" bottom bar
" Plug 'vim-airline/vim-airline'

" Solarized theme
Plug 'altercation/vim-colors-solarized'
" Comments
Plug 'tomtom/tcomment_vim'

" Fix Indentation
Plug 'sickill/vim-pasta'

" file tree 
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" Notes
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Fuzzy File Search
Plug 'kien/ctrlp.vim'
let g:ctrlp_show_hidden = 1

call plug#end()


" POWERLINE
set  rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" dinamic colorschome with pywal
colorscheme solarized

" change the cursor on mode change
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
" END CURSOR CHANGE
