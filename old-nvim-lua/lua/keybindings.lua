vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "n", "nzzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "N", "Nzzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "[q", ":cprevious<CR>zzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "]q", ":cnext<CR>zzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "[l", ":lprevious<CR>zzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "]l", ":lnext<CR>zzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "J", "mzJ`z", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "hw", ":HopWord<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "[b", ":bprevious<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "]b", ":bnext<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("i", "jk", "<ESC>", {silent = true})
vim.api.nvim_set_keymap("i", "kj", "<ESC>", {silent = true})
vim.api.nvim_set_keymap("c", "<C-j>", "<Right>", {silent = true})
vim.api.nvim_set_keymap("c", "<C-k>", "<Left>", {silent = true})

vim.api.nvim_set_keymap(
  "n",
  "<leader>dpt",
  ":lua require'dap'.toggle_breakpoint()<CR>",
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap("n", "<leader>dpc", ":lua require'dap'.continue()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>dpo", ":lua require'dap'.step_over()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>dpi", ":lua require'dap'.step_into()<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", {silent = true})
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", {silent = true})
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", {silent = true})
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", {silent = true})

vim.cmd [[nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>]]

--vim.cmd [[
--    nnoremap <silent><leader>ca :Lspsaga code_action<CR>
--    vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
--    nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
--    nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
--    nnoremap <silent><leader>ln :Lspsaga rename<CR>
--    nnoremap <silent><leader>ld :Lspsaga preview_definition<CR>
--    nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
--    nnoremap <silent><leader>lh  :Lspsaga lsp_finder<CR>
--    nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
--    nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
--    nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
--    highlight link LspSagaFinderSelection Search
--]]

vim.api.nvim_set_keymap("n", "<C-f>", "z=1<CR><CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -1<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +1<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +1<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -1<CR>", {silent = true, noremap = true})

vim.api.nvim_set_keymap("n", "<leader>gh", ":diffget //3<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gu", ":diffget //2<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gs", ":G<CR>", {silent = true, noremap = true})
