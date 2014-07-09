""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
"
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This must be first as it changes other options as a side effect
set nocompatible

" Sets how many lines of history VIM will remember
set history=1000

" Remap the leader from \ to ,
let mapleader=","
let g:mapleader=","

" Fast saving
nmap <leader>w :w!<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the current position
set ruler

" Line numbers are nice to have
set number

" Change the terminals title
set title

" Always show line numbers, but only in current window
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

" Set command bar height to double its size
set cmdheight=2

" Configure backspace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros
set lazyredraw

" Turn on for regular expressions
set magic

" Show matching brackets when cursor is selecting them
set showmatch

" Blink matching bracket for n tenths of a second
set mat=2

" Change split defaults to open in more comfortable locations
set splitbelow
set splitright

" Scroll window when cursor is less than amount
set scrolloff=5


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't fold by default
set nofoldenable

" Fold based on indent
set foldmethod=indent

" Set deepest fold level
set foldnestmax=5

" Toggle folds with the space bar
nnoremap <Space> za


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" Be smart when searching with cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Make tabs smarter
set smarttab

" Always set auto-indenting on
set autoindent

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Do not keep a backup file, use versions instead
set nobackup

" Set VIM to auto update when a file is changed from another editor
set autoread

" Automatically change directory to files current directory
set autochdir

" Set no swap files
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Themes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 256 colors in the terminal
set t_Co=256

" Set color scheme
colorscheme Tomorrow-Night-Eighties

set background=dark

" Set options when running GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guitablabel=%M\ %t
    set guifont=Inconsolata\ for\ Powerline:h14
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fonts and File Types
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Enable mouse use
set mouse=a

" Hide the mouse when typing
set mousehide

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source the Vundle setup file
if filereadable(expand("~/.vim/vundles.vim"))
    source ~/.vim/vundles.vim
endif

" Source the Vundle bundle config file
if filereadable(expand("~/.vim/vundles_config.vim"))
    source ~/.vim/vundles_config.vim
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Better completion in the CLI
set wildmenu

set wildmode=longest:full,full

" Ignore these folders for completions
set wildignore+=*.o,*.obj,*.bak,*.exe,*.m3u,*.avi
set wildignore+=*.mp3,*.jpg,*.srt,*.sub,*.idx,*.nfo
set wildignore+=*.mp4,*.sfv,*.mkv,*.rar,*.zip,*.smi
set wildignore+=*.ssa,*.divx,*.style,*.nzb,*.chf
set wildignore+=*.part,*.png,*.pdf,*.chm


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load local vimrc settings
if filereadable('.vimrc.local')
  source .vimrc.local
end
