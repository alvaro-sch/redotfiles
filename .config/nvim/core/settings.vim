syntax enable
set title                 " show title on terminal window
set encoding=utf-8        " set encoding to utf8
set mouse=a               " enable mouse
set t_Co=25	   	          " enable 256 colors
set tabstop=4      	      " insert 4 spaces for tab
set shiftwidth=4   	      " tab = 4 spaces
set expandtab      	      " makes tab insert spaces
set smartindent           " makes indent smarter
set autoindent            " good autoindent
set number relativenumber " show line number
set updatetime=300 	      " faster completion
set timeoutlen=500 	      " by default timeoutlen is 1000 ms
set undofile              " persistent undo even after you close a file and re-open it
set clipboard=unnamed     " make y copy to system clipboard (midclick)
                          " set clipboard=unammedplus for ctrl+v

" unmap arrow keys
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" unmap help
noremap  <F1>    <Nop>
inoremap <F1>    <Nop>

" leader key
let mapleader = ","

