"filetype off
set nocompatible
set background=dark
set number
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab

" fix vim 8.0 backspace problem when use insert mode
set backspace=2

call plug#begin('~/.vim/plugs')
" you can vundle#begin('~/some/path/here')
Plug 'airline'
Plug 'airline-theme'
Plug 'autoformat'
Plug 'ctrlp'
Plug 'ctrlspace'
Plug 'easymotion'
Plug 'nerdtree'
Plug 'undotree'
Plug 'tmuxline'
Plug 'tagbar'
call plug#end()
filetype plugin indent on

" Airline
set guifont=Liberation_Mono_for_Powerline:h10 
set guifont=Liberation\ Mono\ for\ Powerline\ 10 
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme='cool'
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_warning = ''
"let g:airline_section_b = '%{getcwd()}'

" Control Space
set nocompatible
set hidden
set showtabline=0
if executable("ag")
	let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:CtrlSpaceSearchTiming = 500

" Undotree
nnoremap <C-k> :UndotreeToggle<cr>
set undolevels=2000
set undoreload=20000
if has("persistent_undo")
	set undodir=~/.undodir/
	set undofile
endif

" Tmux
"let g:airline#extensions#tmuxline#enabled=0
"let g:tmuxline_powerline_separators = 0

" nerdtree
nnoremap <C-l> :NERDTreeToggle<CR>

" tagbar
filetype on
let g:tagbar_ctags_bin='~/.vim/plugs/tagbar/ctags-5.8/ctags'
let g:tagbar_left=1
nnoremap <C-j> :TagbarToggle<CR>
