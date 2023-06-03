set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ",,"

filetype plugin indent on " required
syntax on

map <ESC>u :nohl<CR>
noremap <ESC>c :w !pbcopy<CR><CR>
noremap <ESC>v :r !pbpaste<CR><CR>

set hidden
set title
set ignorecase
set smartcase

nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tn  :tabnew<CR>

hi TabLineSel ctermfg=Red ctermbg=Yellow

set history=1000
set undolevels=1000
set smarttab

set noswapfile "no swap file

set number

set ruler
set mousemodel=extend

set showmatch
set noerrorbells
set novisualbell

set hlsearch
set incsearch
set backspace=indent,eol,start

set background=dark

set t_Co=256
