set nocompatible
filetype off

set number
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
set belloff=all
" set background=dark

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
 nnoremap <C-i> :call NumberToggle()<CR>

" map key to change buffer
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>

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
