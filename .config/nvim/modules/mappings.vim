"Keymaps
" Making sure space is available to be leader
nnoremap <SPACE> <Nop>

"All
map <SPACE> <leader>

"Normal Mode

" Find and replace mappings
" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <leader>r :%s///g<Left><Left>
nnoremap <leader>rc :%s///gc<Left><Left><Left>

" Same as above but only on the visual selection
noremap <leader>r :%s///g<Left><Left>
xnoremap <leader>rc :%s///gc<Left><Left><Left>

" Type a replacement term and press . to repeat the replacement again. Useful
" for replacing a few instances of the term (comparable to multiple cursors)
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn

nnoremap J 5j
nnoremap K 5k
" Remapping search to use 'very magic' by default
nnoremap / /\v
vnoremap / /\v
" Tabs
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>] :tabnext<CR>
nnoremap <leader>[ :tabprev<CR>
nnoremap <leader>to :tabo<CR>

" Toggle relative line numbers
nnoremap <leader>tn :set rnu!<cr>

" Buffers
" Switch between buffers using <leader>
nnoremap <leader>o <C-^>
" Only buffer
nnoremap <leader>O :on<CR>

nnoremap <leader>td :set background=dark<CR>
nnoremap <leader>tl :set background=light<CR>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fw <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>pfw <cmd>Telescope live_grep<cr>
nnoremap <leader>/ :nohlsearch<CR>
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
" Git status shortcut for fugitive
nnoremap <leader>gs :G<CR>
" Get the git diff on the right 
nnoremap <leader>gj :diffget //3<CR>
" Get the git diff on the left 
nnoremap <leader>gf :diffget //2<CR>
nmap <leader>b :Dirvish<CR>
nmap <leader>F :Dirvish %<CR>
" Use alt + hjkl to resize windows
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Down> :res -3<CR>
nnoremap <silent> <C-Up> :res +3<CR>
map <leader>nt :vnew term://zsh<CR>

" Terminal
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>

" Visual

" Better tabbing
vnoremap < <gv
vnoremap > >gv
" search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Spelling
map <F6> :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>go :Goyo<CR>
