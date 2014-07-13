""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Bundle Config
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme             = 'solarized'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts = 0
let g:airline#extensions#hunks#enabled=0
let g:airline_left_sep          = ''
let g:airline_right_sep         = ''

"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set laststatus=2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-t> :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_width=25
let g:tagbar_compact=1
let g:tagbar_singleclick=1
let g:tagbar_sort=0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Emmet plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-Z>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dash plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-d> :Dash<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-g> :GundoToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Added for any future plugins that show numbers where they shouldn't be
" Add plugins within brackets
"let g:numbers_exclude = []
