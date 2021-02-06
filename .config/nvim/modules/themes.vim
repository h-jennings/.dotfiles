if exists('+termguicolors')
  set termguicolors
endif

" Theme
syntax on
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Material gruvbox
let g:gruvbox_material_background = 'hard'
let g:airline_theme = 'gruvbox_material'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_cursor = 'yellow'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_visual = 'grey background'
colorscheme gruvbox-material

" Forest Night Theme
" let g:forest_night_enable_italic = 1
" let g:airline_theme = 'forest_night'
" colorscheme forest-night

"Edge
" let g:edge_style = 'neon'
" let g:edge_enable_italic = 1
" let g:edge_menu_selection_background = 'blue'
" let g:airline_theme = 'edge'
" let g:edge_diagnostic_line_highlight = 1
" let g:edge_better_performance = 1
" colorscheme edge

"Nightfly
" colorscheme nightfly

" Miramare
" let g:miramare_enable_italic = 1
" let g:airline_theme = 'miramare'

" colorscheme miramare
