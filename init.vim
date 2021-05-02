source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/vim-plug/plug.vim
source $HOME/.config/nvim/plug-config/fzf.vim

"vim plug plugins"
 call plug#begin(stdpath('data') . '/plugged')
 Plug 'mbbill/undotree'
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'
 Plug 'altercation/vim-colors-solarized'
 Plug 'tpope/vim-surround'
 Plug 'vim-airline/vim-airline'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"Plug 'itchyny/lightline.vim'
 Plug 'scrooloose/nerdtree'
 Plug 'fannheyward/coc-pyright'
 Plug 'junegunn/fzf.vim'
 Plug 'airblade/vim-rooter'
 Plug 'ycm-core/YouCompleteMe'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jremmen/vim-ripgrep'
 Plug 'https://github.com/sickill/vim-monokai.git'
 Plug 'vim-utils/vim-man'
 Plug 'tpope/vim-fugitive'
 Plug 'lyuts/vim-rtags' 
call plug#end()

"set some feachers"
set relativenumber
filetype plugin indent on



"added material color sceme
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if (has('termguicolors'))
  set termguicolors
endif
"let g:lightline = { 'colorscheme': 'material_vim' }
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'darker-community'
syntax enable
colorscheme monokai 

" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif


"kite detection problem
   set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
   set laststatus=2  " always display the status line

"added top bar 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

