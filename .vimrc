set number relativenumber

syntax on
set tabstop=4


call plug#begin('~/.vim/plugged')

" dinamic colorscheme with pywal
Plug 'dylanaraps/wal.vim'

" bottom bar
Plug 'vim-airline/vim-airline'
call plug#end()

" dinamic colorschome with pywal
colorscheme wal
