vim.cmd [[colorscheme gruvbox
let g:gruvbox_contrast_dark='hard']]
--vim.g.onedark_style = "deep"
--vim.g.onedark_italic_comment = true
--require("onedark").setup()
vim.g.mapleader = " "
vim.o.background = "dark"
require "init"
require "keybindings"
require "settings"
vim.api.nvim_set_keymap("n", "<leader>sd", ":Lspsaga hover_doc<CR>", {noremap = true, silent = true})

