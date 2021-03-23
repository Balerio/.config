" Change leader key
let mapleader = " "

"# REMAPS
nnoremap <leader>/ :noh<cr> " Clear Current Selection Highlight
nnoremap , za               " open / close folding
map <c-S> :w<cr>            " save with CTRL-S

set clipboard=unnamed

" split movements
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" open splits on the bottom
set splitbelow

set timeoutlen=1000 ttimeoutlen=0 " remove delay when presing ESC EXPERIMENTAL

"# Appearance
set number relativenumber
set signcolumn=yes
set nocompatible
set ttyfast
set lazyredraw

filetype plugin on
filetype indent on	" load filetype-specific indent files

syntax on
set path+=**
:map <leader>gf :e <cfile><cr> " create file under cursor
" syntax enable

" tabs
set tabstop=4		    " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab		    " tabs are spaces
set shiftwidth=2

set splitright

set signcolumn=yes

set autoindent                        " maintain indent of current line
set backspace=indent,start,eol        " allow unrestricted backspacing in insert mode

set scrolloff=10 " always keep at least X lines on top/bottom while scrolling

" ignore wildcards (also for ctrlp)
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*

set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase			    " Ignore case when searching.
set smartcase			      " Switch to case sensitive if uppercase letter found

" folding
if has('folding')
    if has('windows')
        set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
    endif
     set foldmethod=indent
     set foldlevelstart=99               " start unfolded
     set foldignore=                     " remove default ignores es. #
     let g:gtdown_default_fold_level = 2  " Default fold level for new Markdown buffers (see `:h 'foldlevel'`).
     let g:gtdown_fold_list_items = 1  " Should multi-line list items collapse too, or only headings?
     let g:gtdown_show_progress = 1  " Display progress bar for folded headings/list items?
endif

set mouse=a  " Enable mouse srolling

" Automatically install plugged if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" PLUGINS
call plug#begin('~/.vim/plugged')

  Plug 'vim-syntastic/syntastic' " Syntax Highligh
  Plug 'vim-airline/vim-airline'  " bottom bar
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tomtom/tcomment_vim'  " Comments
  "Plug 'sickill/vim-pasta'  " Fix Indentation

  " Plug 'Valloric/YouCompleteMe'  " You Complete Me

  "Plug 'godlygeek/tabular'  " MARKDOWN
  "Plug 'plasticboy/vim-markdown'

  " Plug 'vimwiki/vimwiki' " VimWiki notes

  " file tree 
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  map <C-n> :NERDTreeToggle<CR>
  map <leader>/ :noh<CR>

  nnoremap <silent> <leader>rh :!pandoc % --to=html5 > %.html && explorer.exe %.html <cr>
  nnoremap <silent> <leader>rp :!pandoc % -t beamer > %.pdf && explorer.exe %.pdf <cr>
  nnoremap <silent> <leader>rd :!pandoc % --to=docx > %.docx && explorer.exe %.docx <cr>

  Plug 'tpope/vim-surround'  " Surround
  Plug 'kien/ctrlp.vim'  " Fuzzy File Search
  let g:ctrlp_show_hidden = 1

  Plug 'rlue/vim-getting-things-down'  " TODO LISTS
  Plug 'morhetz/gruvbox' " gruvbox color theme
  Plug 'arcticicestudio/nord-vim'  " Nord Theme
  Plug 'jnurmine/Zenburn' " ZenBurn Theme

  Plug 'mattn/emmet-vim'
  " let g:user_emmet_leader_key=','

  " Table Mode
  Plug 'dhruvasagar/vim-table-mode'

  " ORG MODE
  Plug 'jceb/vim-orgmode'
  Plug 'tpope/vim-speeddating'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'junegunn/limelight.vim'
  " Color name (:help cterm-colors) or ANSI code
  let g:limelight_conceal_ctermfg = 'gray'
  let g:limelight_conceal_ctermfg = 240
  "
  " " Color name (:help gui-colors) or RGB color
  let g:limelight_conceal_guifg = 'DarkGray'
  let g:limelight_conceal_guifg = '#777777'
  "
  " " Default: 0.5
  let g:limelight_default_coefficient = 0.7

  " VIM TMUX NAVIGATION WITH CTRL-HJKL
  Plug 'christoomey/vim-tmux-navigator'

  " PYTHON PIP8 CHECKING
  " Plug 'nvie/vim-flake8'
  Plug 'dense-analysis/ale'
  Plug 'sheerun/vim-polyglot'
  let g:python_highlight_all = 1

call plug#end()


" colorscheme gruvbox
colorscheme nord
" colorscheme zenburn
set background=dark
set t_Co=256 "does not work in nvim

" Fix Display Colors
" set term=screen-256color
set t_ut=

set cursorline   " Set Highlight on Current Line

" change the cursor on mode change
if exists('$TMUX')
    " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[5 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
    autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
else
    let &t_SI .= "\<Esc>[5 q"
    let &t_EI .= "\<Esc>[2 q"
"    autocmd VimLeave * silent !echo -ne "\033[0 q"
endi

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

"# Improve Performance
"
" NO IDEA WHAT IT DOES BUT AT FIRST SEEMS TO WORK
set regexpengine=1


" MAPPINGS
nnoremap <leader>ev :vsplit ~/.config/.vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


" PYTHON

au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

let python_highlight_all=1


autocmd BufNewFile  *.py	0r ~/.config/nvim/templates/skeleton.py
