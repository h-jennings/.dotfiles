set number relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set mouse=a
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set pumheight=10
set fileencoding=utf-8
set nocompatible
filetype plugin on
set ruler
set expandtab
set incsearch ignorecase smartcase hlsearch
set wrap breakindent
set textwidth=80
set wrapmargin=0
set noswapfile
set title
set encoding=UTF-8
set autoindent
set laststatus=0
set showtabline=2
set clipboard=unnamedplus
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
set timeoutlen=800

" Default diff is set to vertical
set diffopt+=vertical

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

set colorcolumn=80

" makes the substitute command interactive
set inccommand=nosplit

set scrolloff=8
