function! Prose()
  call pencil#init()
  setlocal noautoindent
  setlocal nocindent
  setlocal nosmartindent
  setlocal indentexpr=
  setlocal spell! spelllang=en_us
  colorscheme pencil
  setlocal background=light
  let g:airline_theme = 'pencil'
endfunction

let g:pencil#wrapModeDefault = 'soft'
" Automatically call 'Prose' function based on filetype
augroup markdown
  autocmd!
  autocmd FileType markdown,mkd,text call Prose()
augroup END 

" invoke manually by command for other filetypes
command! -nargs=0 Prose call Prose()

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
