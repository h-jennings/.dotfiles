if exists('g:vscode')
  source $HOME/.config/vscode_neovim/plugins.vim
 
  set clipboard+=unnamedplus
  set incsearch ignorecase smartcase hlsearch
  set updatetime=300
  set timeoutlen=800

  " ! Mappings
  source $HOME/.config/vscode_neovim/mappings.vim
endif