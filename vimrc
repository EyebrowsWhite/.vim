" my vimrc derived from https://github.com/theniceboy/.vim

" ===
" === System
" ===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8

set clipboard=unnamed

" Prevent incorrect backgroung rendering
" let &t_ut=''

" ===
" === Main code display
" ===
set number
set relativenumber
set ruler
set cursorline
syntax enable
syntax on
" theme configuration
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" ===
" === Editor behavior
" ===

" Better tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" ===
" === Status/command bar
" ===
set laststatus=2
" set autochdir
set showcmd
" set formatoptions-=tc

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
" show a navigable menu for tab completion
set wildmode=longest,list,full

" Searching options
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" ===
" === Basic Mappings
" ===

" Save & quit
" map Q :q<CR>
map S :w<CR>

" Undo operations
noremap l u
" Undo in Insert mode
inoremap <C-l> <C-u>

" Insert Key
noremap k i
noremap K I

" ===
" === Cursor Movement
" ===
"
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     u
" < n   i >
"     e
"     v
noremap u k
noremap n h
noremap e j
noremap i l

" U/E keys for 10 times u/e (faster navigation)
noremap U 10k
noremap E 10j

" Faster in-line navigation
" noremap W 5w
" noremap B 5b

" N key: go to the start of the line
noremap N 0
" I key: go to the end of the line
noremap I $

" set h as n for search next, same as H as N
noremap h n
noremap H N

" set j as e for jump to end of word
noremap j e
