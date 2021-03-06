"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/home/$USER/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/$USER/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here: NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'Rykka/riv.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'godlygeek/tabular'
NeoBundle 'bling/vim-airline'
NeoBundle 'klen/python-mode'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'szw/vim-ctrlspace'
"NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/a.vim'
NeoBundle 'vim-scripts/ack.vim'
NeoBundle 'vim-scripts/gtk-vim-syntax'
NeoBundle 'jistr/vim-nerdtree-tabs'
"NeoBundle 'sudar/vim-arduino-syntax'
"NeoBundle 'Rykka/clickable.vim'
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'
NeoBundle 'vim-scripts/loremipsum'
"NeoBundle 'lukerandall/haskellmode-vim'
"NeoBundle 'LaTeX-Box-Team/LaTeX-Box'
NeoBundle 'elzr/vim-json'
"NeoBundle 'mattn/emmet-vim'
"NeoBundle 'cohama/lexima.vim'
"NeoBundle 'Glench/Vim-Jinja2-Syntax'
NeoBundle 'reedes/vim-thematic'
"NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'fatih/vim-go'


" --- Colors
"NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'reedes/vim-colors-pencil'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ywjno/vim-tomorrow-theme'
NeoBundle 'chriskempson/base16-vim'
 
 
    " Required:
    call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
"Begin Custom User Settings -------------------
set t_Co=256
"set guifont=PragmataPro\ for\ Powerline\ 12
"set background=dark
"if has("gui_running")
"    colorscheme hybrid
"else
"    colorscheme hybrid
"endif

set guioptions-=T 
set guioptions-=r
set guioptions-=l
set guioptions-=b
set guioptions-=L
set guioptions-=m
set guioptions-=e

" Forced sensitive settings
set number
set showbreak=↪

"tabs an spaces
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"window management
au FocusLost * :silent! wall "save if focus lost
au VimResized * :wincmd = "also resize split windows on resize

"easy split window navigation
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
set wmh=0 "Make Windows resizeable to statusline only

"misc
set wrap
set textwidth=80
set colorcolumn=+1
set hidden
set ttyfast
set lazyredraw
set colorcolumn=0

"undo stuff
set undofile
set undoreload=1000
set undodir=~/.vim/tmp/undo/
set noswapfile

"searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set laststatus=2

"security related
set cm=blowfish

" Disable message
set shortmess+=I

" Completion options
set completeopt=menu

"CtrlSpace
hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE
let g:ctrlspace_use_tabline=1
let g:pandoc#formatting#mode="h"
let g:pandoc#formatting#textwidth=80
let g:pandoc#syntax#conceal#use=0

"Thematic plugin

let g:thematic#theme_name = 'base16'
let g:thematic#defaults = { 'background': 'dark',
\                           'airline-theme': 'tomorrow',
\                           'laststatus': 2,
\ }

let g:thematic#themes = {
\ 'base16'     : { 'colorscheme': 'base16-ashes',
\                  'typeface': 'PragmataPro for Powerline',
\                  'font-size': 14,
\                   'sign-column-color-fix': 1,
\                   'fullscreen-background-color-fix': 1,
\                },
\ 'iawriter'   : { 'colorscheme': 'pencil',
\                  'background': 'light',
\                  'columns': 75,
\                  'font-size': 20,
\                  'fullscreen': 1,
\                  'laststatus': 0,
\                  'linespace': 8,
\                  'typeface': 'Cousine',
\                },
\ 'pencil_dark' :{ 'colorscheme': 'pencil',
\                  'typeface': 'PragmataPro for Powerline',
\                  'font-size': 12,
\                  'transparency': 10,
\                },
\ 'pencil_lite' :{ 'colorscheme': 'pencil',
\                  'background': 'light',
\                  'airline-theme': 'light',
\                  'laststatus': 0,
\                  'ruler': 1,
\                  'typeface': 'PragmataPro for Powerline',
\                  'transparency': 0,
\                  'font-size': 12,
\                },
\ }
