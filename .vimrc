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
filetype plugin indent on
set hidden          " hides buffers instead of removing them
set nobackup        " do not keep a backup file, use versions instead
set autoread        " Set to auto read when a file is changed from the outside
set autochdir       " automatically cd to file
set noswapfile      " sets no swap file
au InsertEnter * :checktime
set wildignore=*.o,*.obj,*.bak,*.exe,*.m3u,*.avi,*.mp3,*.jpg,*.srt,*.sub,*.idx,*.nfo,*.mp4,*.sfv,*.mkv,*.rar,*.zip,*.smi,*.ssa,*.divx,*.style,*.nzb,*.chf,*.part,*.png,*.pdf,*.chm

" Appearance ---------------------------------
syntax on           " Syntax on
set t_Co=256        " sets 256 colors in the terminal
set cursorline      " Highlights the current line
set number          " Sets the line number
colorscheme monokai

" Mouse --------------------------------------
set mouse=a

" Control Keys -------------------------------
inoremap <C-BS> <C-W>
nnoremap <C-BS> bdw         " ctrl-backspace deleted the previous word
vnoremap <C-a> ggVG         " map ctrl+a to select all in visual mode
nnoremap <C-a> ggVG         " map ctrl+a to select all in normal mode
vnoremap <C-c> "+y          " map ctrl+c to copy in visual mode
vnoremap <C-v> "+gP         " map ctrl+v to paste in visual mode
inoremap <C-v> <C-O>"+gP    " map ctrl+v to paste in insert mode
nnoremap <C-n> :bn<CR>      " Moves along buffers
" Maps the control + movement keys to moving around window splits
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-p> :A<CR>       " switch between header and source files
nnoremap / /\v
vnoremap / /\v

" Vundle -------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/L9'
Plugin 'mattn/emmet-vim'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" Airline ------------------------------------
let g:airline_theme             = 'powerlineish'
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
let g:tagbar_left=0
let g:tagbar_width=25
let g:tagbar_compact=1
let g:tagbar_singleclick=1
let g:tagbar_sort=0

" CtrlP settings --------------------------
" let g:ctrlp_working_path_mode = 'c'

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

" Emmet settings -----------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" Dash settings ------------------------------
map <C-d> :Dash<CR>
