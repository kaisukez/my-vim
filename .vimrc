set nocompatible
filetype off
syntax on

set number
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
set belloff=all
" set background=dark
" set term=screen-256color

" fix vim 8.0 backspace problem when use insert mode
set backspace=2

" Number Toggle                     
function! NumberToggle()            
	if(&number == 1)                
		set nonumber                
		set relativenumber          
	elseif(&relativenumber == 1)    
		set number                  
		set norelativenumber        
	endif                           
endfunction                         
nnoremap <C-u> :call NumberToggle()<CR>

" map key to change buffer
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>
nnoremap <C-j> :tabp<CR>
nnoremap <C-k> :tabn<CR>

" Change buffer shortcut
nnoremap <leader>g :CtrlPBuffer<CR>

" Tab Management
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>c :tabclose<CR>

" map key to change window size
nnoremap <leader>a 8<C-w><
nnoremap <leader>f 8<C-w>>
nnoremap <leader>s 5<C-w>-
nnoremap <leader>d 5<C-w>+

" map key to change window faster
nnoremap <TAB> <C-w>
nnoremap <TAB><TAB> <C-w><C-w>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'mbbill/undotree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'easymotion/vim-easymotion'
	Plugin 'scrooloose/nerdtree'
	Plugin 'tpope/vim-fugitive'
	Plugin 'tpope/vim-surround'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'pangloss/vim-javascript'
	Plugin 'mxw/vim-jsx'
	" Plugin 'joukevandermaas/vim-ember-hbs'
	Plugin 'mustache/vim-mustache-handlebars'
call vundle#end()
filetype plugin indent on

" For Undotree
set undofile
set undodir=~/.undodir
set undolevels=3000
set undoreload=30000

" For Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
let g:airline_section_warning = ''
let g:airline_powerline_fonts = 1

" For Ctrl-P
let g:ctrlp_clear_cache_on_exit = 0

" For Easymotion

" For Nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" For Fugitive

" For Surround

" For Nerd Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" For vim-jsx
" fixed javascript es6 syntax highlight
let g:jsx_ext_required = 0

" For Vim Ember Hbs

" For Mustache Handlebars
au BufReadPost *.hbs set syntax=mustache
