set number relativenumber

syntax on
set tabstop=4

" Enable mouse srolling
set mouse=a

call plug#begin('~/.vim/plugged')

" dinamic colorscheme with pywal
Plug 'dylanaraps/wal.vim'

" bottom bar
Plug 'vim-airline/vim-airline'
call plug#end()



" POWERLINE
" set  rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
" set laststatus=2
" set t_Co=256

" dinamic colorschome with pywal
colorscheme wal
