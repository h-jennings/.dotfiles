" sort folders at the top by default and hide unnecessary files as well
let g:dirvish_mode = ':sort ,^.*[\/], | :silent keeppatterns g/.git\/\|.DS_Store/d _'

augroup dirvish_config
  " New Folder
  autocmd FileType dirvish
    \  nnoremap <buffer> md :!mkdir %

  " New File
  autocmd FileType dirvish
    \  nnoremap <buffer> mf :!touch %

  " Map `gh` to hide dot-prefixed files.  Press `R` to "toggle" (reload).
  autocmd FileType dirvish nnoremap <silent><buffer>
    \ gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>

augroup END
