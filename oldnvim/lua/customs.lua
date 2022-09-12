--Added custom key bindings
--vim.api.nvim_set_keymap("n", "<leader>t", ":terminal<CR>", {noremap = true, silent = true})
--vim.api.nvim_set_keymap("n", "<leader>t", ":FloatermNew --height=0.4 --width=0.9 --position=bottom<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>t", ":FloatermNew<CR>", {noremap = true, silent = true})
vim.cmd[[let g:floaterm_keymap_toggle = '<F12>']]
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>",{ silent = true})
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>",{ silent = true})
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>",{ silent = true})
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>",{ silent = true})
--vim.api.nvim_set_keymap("n", "ss", ":w<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "n", "nzzzv",{noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "N", "Nzzzv",{noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "[q", ":cprevious<CR>zzzv",{noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "]q", ":cnext<CR>zzzv",{noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "[l", ":lprevious<CR>zzzv",{noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "]l", ":lnext<CR>zzzv",{noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "J", "mzJ`z",{noremap = true,silent = true})
vim.api.nvim_set_keymap("n", "<leader>K", ":Cheat<CR>",{noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", ":HopWord<CR>", {noremap = true, silent = true})
vim.cmd[[nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>]]

--Added custom Key bindings
vim.cmd[[ let g:vimspector_enable_mappings = 'HUMAN']]
--vim.cmd[[let g:user_emmet_leader_key='<C-Y>']]
vim.cmd[[let g:user_emmet_leader_key='<C-Y>']]

--quickscope config 
vim.cmd[[let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150]]

vim.cmd[[let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
"let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompts
 let g:sneak#prompt = '🕵'
 let g:sneak#prompt = '🔎'

" I like quickscope better for this since it keeps me in the scope of a single line
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T]]
vim.cmd[[map <S-Enter> <Plug>(easymotion-prefix)]]
--from syntastic
vim.cmd[[set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = [ 'jshint' ]
let g:syntastic_ocaml_checkers = ['merlin']
let g:syntastic_python_checkers = ['pyright']
let g:syntastic_shell_checkers = ['shellcheck']
let g:syntastic_check_on_wq = 0
]]
--from syntastic

-- form cheat.sh
vim.g.cheat_default_window_layout = 'float'

-- form cheat.sh

