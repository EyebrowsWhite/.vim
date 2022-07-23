" ===
" === System
" ===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set mouse=a

" Prevent incorrect background rendering
let &t_ut=''
set autochdir

" ===
" === Main code display
" ===
set number
set relativenumber
set ruler
set cursorline
set cursorcolumn
syntax enable
syntax on

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

" Better backspace
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
" Better cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ===
" === Status/command bar
" ===
set laststatus=2
set noshowmode
set showcmd
" set formatoptions-=tc
" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
set wildmode=full
" Searching options
set hlsearch
set incsearch
set ignorecase
set smartcase

" ===
" === Restore Cursor Position
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ========== CORE MAPPINGS ==========
" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>
let mapleader=" "
" Save & quit
map Q :q<CR>
map S :w<CR>
" Undo operations
noremap l u
" Insert Key
noremap k i
noremap K I
" Copy to system clipboard
vnoremap Y "+y

" ===
" === Cursor Movement
" ===
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
" U/E keys for 5 times u/e (faster navigation)
noremap U 5k
noremap E 5j
" I key: go to the end of the line
noremap I o<Esc>
" set h as n for search next, same as H as N
noremap h nzz
noremap H Nzz
" set j as e for jump to end of word
noremap j e
" set L as High, N as Middle, M as Low
noremap L H
noremap N M
noremap M L
" ========== CORE MAPPINGS ==========

" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
map <LEADER>u <C-w>k
map <LEADER>e <C-w>j
map <LEADER>n <C-w>h
map <LEADER>i <C-w>l
" Disabling the default s key
noremap s <nop>
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map se :set splitbelow<CR>:split<CR>
map sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map si :set splitright<CR>:vsplit<CR>
" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H
" Reverse screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H
" Resize splits with arrow keys
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" ===
" === Tab management
" ===
" Create a new tab with tu
map tu :tabe<CR>
" change curruent window to new tab
map te <C-w>T
" Move around tabs with tn and ti
map tn :-tabnext<CR>
map ti :+tabnext<CR>
" Move the tabs with tmn and tmi
map tmn :-tabmove<CR>
map tmi :+tabmove<CR>

" ===
" === Terminal in vim
" ===
map <LEADER>t :terminal<CR>
tnoremap <Esc> <C-\><C-n>


" ===
" === Theme and Plugin
" ===
" theme configuration
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" install plugins by vim-plug
call plug#begin()

Plug 'nelstrom/vim-visual-star-search'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
