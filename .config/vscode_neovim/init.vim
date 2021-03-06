" ~~~~~~~~~ Plugins ~~~~~~~~~
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

" ~~~~~~~~~ General ~~~~~~~~~
set clipboard+=unnamedplus
set incsearch ignorecase smartcase hlsearch
set updatetime=300
set timeoutlen=800

" ~~~~~~~~~ Mappings ~~~~~~~~~

" Leader
nnoremap <SPACE> <Nop>
map <SPACE> <leader>

nnoremap J 5j
nnoremap K 5k

nnoremap <leader>j J


" Remapping search to use 'very magic' by default
nnoremap / /\v
vnoremap / /\v

" Better tabbing
vnoremap < <gv
vnoremap > >gv


nnoremap <leader>/ :nohlsearch<CR>

" File actions
nnoremap <leader>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
xnoremap <leader>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
xnoremap <leader>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <leader>q <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
xnoremap <leader>q <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <leader>cg <Cmd>call VSCodeNotify('workbench.action.closeEditorsInGroup')<CR>
xnoremap <leader>cg <Cmd>call VSCodeNotify('workbench.action.closeEditorsInGroup')<CR>
nnoremap <leader>to <Cmd>call VSCodeNotify('workbench.action.closeOtherEditors')<CR>
xnoremap <leader>to <Cmd>call VSCodeNotify('workbench.action.closeOtherEditors')<CR>

" Code actions
nnoremap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap gy <Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>
nnoremap gH <Cmd>call VSCodeNotify('editor.action.showDefinitionPreviewHover')<CR>
nnoremap <leader>d <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
xnoremap <leader>d <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
nnoremap <leader>gn <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
xnoremap <leader>gn <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
nnoremap <leader>rn <Cmd>call VSCodeNotify('editor.action.rename')<CR>
xnoremap <leader>rn <Cmd>call VSCodeNotify('editor.action.rename')<CR>
nnoremap <leader>fw <Cmd>call VSCodeNotify('actions.find')<CR>
xnoremap <leader>fw <Cmd>call VSCodeNotify('actions.find')<CR>
nnoremap <leader>pfw <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>

" File Navigation

nnoremap <leader>ff <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <leader>p <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <leader>P <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>
nnoremap <leader>o <Cmd>call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')<CR>
xnoremap <leader>o <Cmd>call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')<CR>
nnoremap <leader>O <Cmd>call VSCodeNotify('workbench.action.closeEditorsInOtherGroups')<CR>

nnoremap - <Cmd>call VSCodeNotify('revealInExplorer')<CR>
xnoremap - <Cmd>call VSCodeNotify('revealInExplorer')<CR>
nnoremap <leader>b <Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
xnoremap <leader>b <Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <leader>B <Cmd>call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<CR>
xnoremap <leader>B <Cmd>call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<CR>
nnoremap <leader>gs <Cmd>call VSCodeNotify('workbench.scm.focus')<CR>
xnoremap <leader>gs <Cmd>call VSCodeNotify('workbench.scm.focus')<CR>
nnoremap <leader>` <Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>
xnoremap <leader>` <Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>

" Better window navigation
" Left
nnoremap <C-h> <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
xnoremap <C-h> <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>

" Right
nnoremap <C-l> <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
xnoremap <C-l> <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>

" Down
nnoremap <C-j> <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
xnoremap <C-j> <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>

" Up
nnoremap <C-k> <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
xnoremap <C-k> <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>


" Commenting
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

nnoremap <leader>cl <Cmd>call VSCodeNotify('workbench.action.toggleCenteredLayout')<CR>
xnoremap <leader>cl <Cmd>call VSCodeNotify('workbench.action.toggleCenteredLayout')<CR>

" Execute Macro on visually selected lines

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
