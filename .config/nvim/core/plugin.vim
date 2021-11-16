" plugins
call plug#begin(stdpath('data') . '/plugin')

" completions
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" <c-p> fzf
Plug 'kien/ctrlp.vim'

" better status-bar themes
Plug 'vim-airline/vim-airline'

call plug#end()

" config
let g:coq_settings = {
    \ 'auto_start': 'shut-up',
    \ 'display.pum.fast_close': v:false,
    \ }

let g:airline_powerline_fonts = 1
let g:airline_section_z = '%-0l:%-0c | %-p%%'
"let g:airline_section_z = '[%-0l/%L %-p%%] : %-0c'

