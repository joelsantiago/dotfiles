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
" Load vundle or clone from github repo if !exists
let dir = expand("~/.vim/bundle/vundle")
if !isdirectory(dir)
    execute '!git clone https://github.com/gmarik/vundle.git '. dir
endif
let &rtp .= (empty(&rtp) ? '' : ',' ) . dir
call vundle#begin()

" Make Vundle manage itself
Plugin 'gmarik/vundle'

" Vundle bundles
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'b4winckler/vim-objc'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'elzr/vim-json'
Plugin 'kien/ctrlp.vim'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'Keithbsmiley/tmux.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'rizzatti/dash.vim'
Plugin 'rizzatti/funcoo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/L9'

call vundle#end()
filetype plugin indent on

" Appearance ---------------------------------
syntax enable       " Syntax on
set t_Co=256        " sets 256 colors in the terminal
set cursorline      " Highlights the current line
set number          " Sets the line number
set background=dark
colorscheme solarized

" Airline ------------------------------------
let g:airline_theme             = 'solarized'
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
