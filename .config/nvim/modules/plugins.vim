
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'chrisbra/Colorizer'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'AndrewRadev/inline_edit.vim'
Plug 'alvan/vim-closetag'
Plug 'sainnhe/gruvbox-material'
Plug 'logico/typewriter-vim'
Plug 'logico/typewriter-vim'
Plug 'preservim/vim-colors-pencil'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'

" Initialize plugin system
call plug#end()
