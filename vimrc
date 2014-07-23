""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
"
" Sections:
"   -> General config
"   -> VIM user interface
"   -> Folds
"   -> Searching
"   -> Text, tabs and indents
"   -> Files, backups and undo
"   -> Colors and themes
"   -> Fonts and filetypes
"   -> Moving around tabs, windows and buffers
"   -> Vundle setup
"   -> Status line
"   -> Completion
"   -> Misc
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This must be first as it changes other options as a side effect
set nocompatible

" I - Disable the startup message
" a - Avoid pressing enter after saves
set shortmess=Ia

" Sets how many lines of history VIM will remember
set history=1000

" Remap the leader from \ to ,
let mapleader=","
let g:mapleader=","

" Fast saving
nmap <leader>w :w!<CR>

" Fast quiting
nmap <leader>q :q!<CR>

" Remap esc to ctrl-C
noremap <C-c> <Esc>

" Don't make error noises
set noerrorbells

" Don't show error bells
set visualbell


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the current position
set ruler

" Set line number to relative and display current selected line number
set number
"set relativenumber

" Set vertical line at 80 characters
set colorcolumn=80

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
" Text, tabs and indents
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Make tabs smarter
set smarttab

" Always set auto-indenting on
set autoindent

" Same goes for smart-indenting
set smartindent

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

" Set auto-wrapping for git commit messages at 72 chars
autocmd Filetype gitcommit setlocal spell textwidth=72

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and themes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 256 colors in the terminal
set t_Co=256

" Set color scheme
colorscheme solarized

" Change color scheme from solarized light and dark based on time of day
let hour = strftime("%H")
if 6 <= hour && hour < 18
    set background=light
else
    set background=dark
endif

autocmd BufWritePost * source ~/.vimrc

" Set options when running GUI mode
if has("gui_running")
    colorscheme fluffy
    set guioptions-=T
    set guioptions-=e
    set guitablabel=%M\ %t
    set guifont=Inconsolata\ for\ Powerline:h14
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fonts and filetypes
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
" Vundle setup
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
" Status line
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
" Background toggle for solarized theme
function! s:ToggleBackground()
  if &background ==# "dark"
    set background=light
  else
    set background=dark
  endif
endfunction
silent! command ToggleBG call s:ToggleBackground()

" Clean trailing whitespace
nnoremap <silent> <leader>t :call ClearWhitespace()<CR>
function! ClearWhitespace()
    normal mi
    silent! %s/\s\+$//
    let @/=""
    update
    normal `i
endfunction

" Run clearwhitespace() on file save
autocmd BufWritePre * :call ClearWhitespace()

" Load local vimrc settings
if filereadable('.vimrc.local')
  source .vimrc.local
end
