set nocompatible
filetype off

set number
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
set belloff=all
set background=dark

" set term=xterm
" set t_Co=256
" let &t_AB="\e[48;5;%dm"
" let &t_AF="\e[38;5;%dm"

" if !empty($CONEMUBUILD)
    " set term=pcansi
    " set t_Co=256
    " let &t_AB="\e[48;5;%dm"
    " let &t_AF="\e[38;5;%dm"
    " set bs=indent,eol,start
    " colorscheme wombat256
" endif    


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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'mbbill/undotree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'ctrlpvim/ctrlp.vim'
	" Plugin 'vim-syntastic/syntastic'
	Plugin 'Chiel92/vim-autoformat'
	" Plugin 'pangloss/vim-javascript'
	" Plugin 'mxw/vim-jsx'
call vundle#end()
filetype plugin indent on

" For Undotree
set undofile
set undodir=~/.undo
set undolevels=3000
set undoreload=30000

" For Airline
let g:airline#extensions#tabline#enabled = 1

" For Ctrl-P
let g:ctrlp_clear_cache_on_exit = 0

" For Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" For Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
noremap <F3> :Autoformat<CR>

" For Vim JSX
" let g:jsx_ext_required = 0
" let g:formatterpath = ['/home/zykigi/.vim/bundle/vim-jsx/ftdetect', '/home/zykigi/.vim/bundle/vim-jsx/after/ftplugin', '/home/zykigi/.vim/bundle/vim-jsx/after/indent', '/home/zykigi/.vim/bundle/vim-jsx/after/syntax']
