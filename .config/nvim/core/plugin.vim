" plugins
call plug#begin(stdpath('data') . '/plugin')

" completions
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" <c-p> fzf
Plug 'kien/ctrlp.vim'

" better status-bar themes
Plug 'vim-airline/vim-airline'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_section_z = '%-0l:%-0c | %-p%%'
"let g:airline_section_z = '[%-0l/%L %-p%%] : %-0c'

