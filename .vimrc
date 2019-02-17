" Change leader key
let mapleader = ","

" REMAPS
nnoremap <leader>/ :noh<cr> " Clear Current Selection Highlight
nnoremap <space> za         " open / close folding
map <c-S> :w

" remove delay when presing ESC EXPERIMENTAL
set timeoutlen=1000 ttimeoutlen=0

set number relativenumber
set nocompatible
filetype plugin on
filetype indent on	" load filetype-specific indent files

:map <leader>gf :e <cfile><cr> " create file under cursor
syntax enable

" splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

" PLUGINS
call plug#begin('~/.vim/plugged')

" Syntax Highligh
Plug 'vim-syntastic/syntastic'

" dinamic colorscheme with pywal
" Plug 'dylanaraps/wal.vim'

" bottom bar
Plug 'vim-airline/vim-airline'

" Solarized theme
" Plug 'altercation/vim-colors-solarized'

" Solarized Color Scheme
" set background=dark
" colorscheme solarized


" Nord Theme
Plug 'arcticicestudio/nord-vim'

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
map <leader>/ :noh<CR>

" Notes
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
nnoremap <leader>r :!pandoc % --to=html5 > %.html

" Surround
Plug 'tpope/vim-surround'

" Fuzzy File Search
Plug 'kien/ctrlp.vim'
let g:ctrlp_show_hidden = 1

" Minimap
Plug 'mipmip/vim-minimap'

call plug#end()


let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12
let g:nord_cursor_line_number_background = 1

colorscheme nord



" POWERLINE
" set  rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
" set laststatus=2
set t_Co=256

" dinamic colorschome with pywal
" colorscheme wal


" Set Background Transparent
hi Normal guibg=NONE ctermbg=NONE

" Set Highlight on Current Line
set cursorline 
" Clear the background so later can enable only the underline
highlight clear CursorLine
" Make cursoline a underline
highlight CursorLine gui=underline cterm=underline ctermfg=None 



" change the cursor on mode change
" let &t_SI = /"\e[6 q"
" let &t_EI = /"\e[2 q"

" Changing cursor shape per mode
" 1 or 0 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
if exists('$TMUX')
    " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[6 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
    autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
else
    let &t_SI .= "\<Esc>[6 q"
    let &t_EI .= "\<Esc>[2 q"
    autocmd VimLeave * silent !echo -ne "\033[0 q"
endi

" optional reset cursor on start:
augroup myCmds
au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
" END CURSOR CHANGE 



