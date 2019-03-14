" Change leader key
let mapleader = ","

" REMAPS
nnoremap <leader>/ :noh<cr> " Clear Current Selection Highlight
nnoremap <space> za         " open / close folding
map <c-S> :w
imap <c-d> <esc>ddi

" remove delay when presing ESC EXPERIMENTAL
set timeoutlen=1000 ttimeoutlen=0

set number relativenumber
set nocompatible
filetype plugin on
filetype indent on	" load filetype-specific indent files

syntax enable

set path+=**

" tabs
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set shiftwidth=4

set autoindent                        " maintain indent of current line
set backspace=indent,start,eol        " allow unrestricted backspacing in insert mode

" always keep at least X lines on top/bottom while scrolling
set scrolloff=10

" ignore wildcards (also for ctrlp)
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*

set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase			" Ignore case when searching.
set smartcase			" Switch to case sensitive if uppercase letter found

" folding
if has('folding')
    if has('windows')
        set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
    endif
    set foldmethod=indent               
    set foldlevelstart=99               " start unfolded
    set foldignore=                     " remove default ignores es. #
endif

" Enable mouse srolling
set mouse=a

" Automatically install plugged if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS
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

" You Complete Me
Plug 'Valloric/YouCompleteMe'

"utilsnip ?
map <C-n> :NERDTreeToggle<CR>

" Notes
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Surround
Plug 'tpope/vim-surround'

" Fuzzy File Search
Plug 'kien/ctrlp.vim'
let g:ctrlp_show_hidden = 1

" Minimap
Plug 'mipmip/vim-minimap'

call plug#end()






" POWERLINE
" set  rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
" set laststatus=2
" set t_Co=256

" dinamic colorschome with pywal
" colorscheme wal

" Solarized Color Scheme
set background=dark
colorscheme solarized

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
