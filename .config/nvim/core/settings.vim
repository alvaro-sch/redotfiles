syntax enable
set title
set hidden
set encoding=utf-8
set mouse=a
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set number relativenumber
set list
set listchars=tab:‣\ ,trail:·
set smarttab                    " delete white spaces from tab if line is empty
set expandtab                   " makes tab insert spaces
set t_Co=25                     " enable 256 colors
set updatetime=300              " faster completion
set timeoutlen=500              " by default timeoutlen is 1000 ms
set undofile                    " persistent undo even after closing
set clipboard=unnamedplus       " make y copy to system clipboard (midclick)
                                " set clipboard=unammedplus for ctrl+v

" leader key
let mapleader = ","

" some useful abbreviations to common mistyped commands
" don't hate me for making mistakes
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq | cab X x

" allow gf to open nonexistent files
map gf :edit <cfile><cr>

" unmap arrow keys
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" unmap help
noremap  <F1>    <Nop>
inoremap <F1>    <Nop>

" reselect visual selection after indent
vnoremap < <gv
vnoremap > >gv

" comment 1 or more lines
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


