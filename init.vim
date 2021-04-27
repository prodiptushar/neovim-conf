source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/vim-plug/plug.vim


"vim plug plugins"
call plug#begin(stdpath('data') . '/plugged')
 Plug 'mbbill/undotree'
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'
 Plug 'altercation/vim-colors-solarized'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'scrooloose/nerdtree'
 Plug 'fannheyward/coc-pyright'
 Plug 'jremmen/vim-ripgrep'
 Plug 'ervandew/supertab'
 Plug 'vim-utils/vim-man'
 Plug 'tpope/vim-fugitive'
 Plug 'lyuts/vim-rtags' 
call plug#end()

"set some feachers"
set relativenumber
syntax enable
filetype plugin indent on
