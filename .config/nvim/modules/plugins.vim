
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'honza/vim-snippets'
Plug 'chrisbra/Colorizer'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'AndrewRadev/inline_edit.vim'
Plug 'alvan/vim-closetag'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/forest-night'
Plug 'sainnhe/edge'
Plug 'franbach/miramare'
Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'ThePrimeagen/vim-be-good'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-gtfo'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'
Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()
