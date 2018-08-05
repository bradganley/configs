let mapleader = "-"
inoremap kj <Esc>
nnoremap <left> <C-W>h
nnoremap <right> <C-W>l
nnoremap <up> <C-W>k
nnoremap <down> <C-W>j
map <C-a> :NERDTreeToggle <CR>
set nu
set autoread
set nowrap
set shiftwidth=4
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
set tabstop=4
colo ron
syntax on
set shiftround
execute pathogen#infect()

 au CursorHoldI * stopinsert 
 au InsertEnter * let updaterestore=&updatetime | set updatetime=7000 
 au InsertLeave * let &updatetime=updaterestore
