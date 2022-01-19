let g:config_files = [
    \ 'settings.vim',
    \ 'au.vim',
    \ 'plugin.vim',
    \ ]

for s:fname in g:config_files
    execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor

