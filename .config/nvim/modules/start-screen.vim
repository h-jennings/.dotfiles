let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_lists = [
\ { 'type': 'files',     'header': ['   Files']            },
\ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\ ]

" Let startify take care of buffers
let g:startify_session_delete_buffers = 1

" When opening a file or bookmark, change to its directory.
let g:startify_change_to_dir = 1

" seek and change to the root directory of the
" VCS (if there is one).
let g:startify_change_to_vcs_root = 1

let g:startify_bookmarks = [ {  'c': '~/Projects/Websites/commonwealth' },{ 'v': '~/.config/nvim' }, { 'a': '~/.config/alacritty' }]

let g:startify_fortune_use_unicode = 1

let g:ascii = [
      \'      ___                                     ___     ',
      \'     /\  \          ___                      /\  \    ',
      \'     \:\  \        /\  \        ___         |::\  \   ',
      \'      \:\  \       \:\  \      /\__\        |:|:\  \  ',
      \'  _____\:\  \       \:\  \    /:/__/      __|:|\:\  \ ',
      \' /::::::::\__\  ___  \:\__\  /::\  \     /::::|_\:\__\',
      \' \:\~~\~~\/__/ /\  \ |:|  |  \/\:\  \__  \:\~~\  \/__/',
      \'  \:\  \       \:\  \|:|  |     \:\/\__\  \:\  \      ',
      \'   \:\  \       \:\__|:|__|      \::/  /   \:\  \     ',
      \'    \:\__\       \::::/__/       /:/  /     \:\__\    ',
      \'     \/__/        ~~~~           \/__/       \/__/    ',
      \]
let g:startify_custom_header = g:ascii + startify#fortune#boxed()

