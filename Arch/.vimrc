set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = "-"
inoremap kj <Esc>
nnoremap <left> <C-W>h
nnoremap <right> <C-W>l
nnoremap <up> <C-W>k
nnoremap <down> <C-W>j
map <F1> :bprevious<CR>
map <F2> :bnext<CR>
map <F3> :vertical resize -5<CR>
map <F4> :vertical resize +5<CR>
map <F5> :se fdm=manual<CR> 
map <F6> :se nofoldenable<CR>
set foldmethod=manual
set nu
set rnu
set autoread
set nowrap
set shiftwidth=2
set shiftround
set showmatch
set ignorecase
set smarttab
set incsearch
set history=1000
set undolevels=1000
set visualbell
set title
set expandtab
set autoindent
set hlsearch
set tabstop=2
colo ron
syntax on
set shiftround

au CursorHoldI * stopinsert 
au InsertEnter * let updaterestore=&updatetime | set updatetime=7000 
au InsertLeave * let &updatetime=updaterestore
