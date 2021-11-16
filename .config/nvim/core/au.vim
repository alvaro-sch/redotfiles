" makefiles only support tab indentation
au! BufNewFile Makefile,makefile set noexpandtab
au! BufRead Makefile,makefile set noexpandtab

" auto source when writing to init.vm alternatively you can run :source $MYVIM
au! BufWritePost $MYVIMRC source %

" see help completion for source,
" note: usual completion is on <C-n> but more trouble to press all the time.
" never type the same word twice and maybe learn a new spellings!
" use the Linux dictionary when spelling is in doubt.
" window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words


