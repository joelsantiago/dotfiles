" Editing -----------------------------------
set nocompatible
set ruler
set backspace=indent,eol,start
set showmatch
filetype off

" Tabs --------------------------------------
set expandtab       " turns a tab into spaces
set autoindent      " always set autoindenting on
set shiftwidth=4    " spaces for auto-indents
set tabstop=4       " number of spaces a tab counts for
set smarttab

" Searching ---------------------------------
set hlsearch        " highlight searches
set smartcase       " becomes case sensitive for uppercase
set incsearch       " do incremental searching
set ignorecase      " case insensitive searching

" Files -------------------------------------
set hidden          " hides buffers instead of removing them
set nobackup        " do not keep a backup file, use versions instead
set autoread        " Set to auto read when a file is changed from the outside
set autochdir       " automatically cd to file
set noswapfile      " sets no swap file
au InsertEnter * :checktime

" Ignore specific filetypes ------------------
set wildignore+=*.o,*.obj,*.bak,*.exe,*.m3u,*.avi
set wildignore+=*.mp3,*.jpg,*.srt,*.sub,*.idx,*.nfo
set wildignore+=*.mp4,*.sfv,*.mkv,*.rar,*.zip,*.smi
set wildignore+=*.ssa,*.divx,*.style,*.nzb,*.chf
set wildignore+=*.part,*.png,*.pdf,*.chm

" Mouse --------------------------------------
set mouse=a         " Enable mouse use
set mousehide       " Hide the mouse when typing

" Maps the control + movement keys to moving around window splits
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

" Remap Leader from \ to ,
let mapleader=","

" Vundle -------------------------------------
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

filetype plugin indent on

" Appearance ---------------------------------
syntax enable       " Syntax on
set t_Co=256        " sets 256 colors in the terminal
set cursorline      " Highlights the current line
set number          " Sets the line number
colorscheme Tomorrow-Night-Eighties
set background=dark

" Line Number Resizing ----------------------
" Always show line numbers, but only in current window
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

" Automatically resize vertical splits - Messes with NERDTree
":au WinEnter * :set winfixheight
":au WinEnter * :wincmd =

" Airline ------------------------------------
let g:airline_theme             = 'tomorrow'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set laststatus=2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" TagBar -------------------------------------
map <C-t> :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_width=25
let g:tagbar_compact=1
let g:tagbar_singleclick=1
let g:tagbar_sort=0

" NERDtree settings --------------------------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"autocmd vimenter * NERDTree     "Start Nerdtree with vim
map <C-n> :NERDTreeToggle<CR>
let g:NERDChristmasTree=1
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrows=0
let g:NERDTreeCasadeOpenSingleChildDir=1
let g:NERDTreeAutoDeleteBuffer=1
set splitright

" Emmet settings -----------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" Dash settings ------------------------------
map <C-d> :Dash<CR>

" Gundo settings -----------------------------
map <C-g> :GundoToggle<CR>
