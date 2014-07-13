""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Setup
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Required for Vundle setup
filetype off

" Load Vundle or clone it from Github if it already exists
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
Bundle "myusuf3/numbers.vim"
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'rizzatti/dash.vim'
Plugin 'rizzatti/funcoo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/L9'
Plugin 'vydark'

call vundle#end()

" Re-enable after Vundle setup
filetype plugin on
filetype indent on

" Enable VIM syntax highlighting after Vundle setup
syntax enable
