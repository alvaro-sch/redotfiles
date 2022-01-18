" makefiles only support tab indentation
au! FileType Makefile,makefile set noexpandtab

" commenting blocks of code
augroup commenting_blocks_of_code
    au!
    au FileType c,cpp,rust,java,scala let b:comment_leader = '// '
    au FileType sh,ruby,python        let b:comment_leader = '# '
    au FileType conf,fstab            let b:comment_leader = '# '
    au FileType haskell,ada           let b:comment_leader = '-- '
    au FileType tex                   let b:comment_leader = '% '
    au FileType mail                  let b:comment_leader = '> '
    au FileType vim                   let b:comment_leader = '" '
    au FileType lisp                  let b:comment_leader = ';; '
augroup end

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


