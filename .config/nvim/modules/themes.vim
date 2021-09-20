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

