" Change leader key
let mapleader = ","

" remove delay when presing ESC EXPERIMENTAL
set timeoutlen=1000 ttimeoutlen=0

set number relativenumber
set nocompatible
filetype plugin on

syntax enable 
set tabstop=2

" Enable mouse srolling
set mouse=a

call plug#begin('~/.vim/plugged')

" Syntax Highligh
Plug 'vim-syntastic/syntastic'

" dinamic colorscheme with pywal
Plug 'dylanaraps/wal.vim'

" bottom bar
Plug 'vim-airline/vim-airline'

" Solarized theme
Plug 'altercation/vim-colors-solarized'
" Comments
Plug 'tomtom/tcomment_vim'

" Fix Indentation
Plug 'sickill/vim-pasta'

" file tree 
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

" Notes
" Plug 'vimwiki/vimwiki'
" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Surround
Plug 'tpope/vim-surround'

" Fuzzy File Search
Plug 'kien/ctrlp.vim'
let g:ctrlp_show_hidden = 1

call plug#end()


" POWERLINE
" set  rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
" set laststatus=2
" set t_Co=256

" dinamic colorschome with pywal
colorscheme wal

" Solarized Color Scheme
" set background=dark
" colorscheme solarized

" Set Background Transparent
hi Normal guibg=NONE ctermbg=NONE

" Set Highlight on Current Line
set cursorline 
" Clear the background so later can enable only the underline
highlight clear CursorLine
" Make cursoline a underline
highlight CursorLine gui=underline cterm=underline ctermfg=None 



" change the cursor on mode change
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
" END CURSOR CHANGE 
