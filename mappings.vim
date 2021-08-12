"  Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap ]b :bnext<CR>
" SHIFT-TAB will go back
nnoremap [b :bprevious<CR>
nnoremap <leader>cl :bw<CR>

" Alternate way to save
nnoremap <leader>w :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


"adding leader key
let mapleader = " " 

nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>


"insert mode nav
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"CocCommand && CocLocalConfig keybinding
"nnoremap cc :CocCommand<CR>
"nnoremap cl :CocLocalConfig<CR>

nnoremap <leader>n :NvimTreeToggle<CR>

nnoremap <leader>u :w<HOME>silent <End> !urlview<CR>


let g:floaterm_keymap_toggle = '<F12>'


"Great vim keymaps
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

noremap hw :HopWord<CR>

vnoremap J :m '>+1<CR>gv=gv  
vnoremap K :m '>-1<CR>gv=gv  


