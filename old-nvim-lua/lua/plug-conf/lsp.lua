local nvim_lsp = require("lspconfig")

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
  --require'completion'.on_attach()
  -- Mappings.
  local opts = {noremap = true, silent = true}

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  buf_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rennme()<CR>", opts)
  buf_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
  buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
  buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local capabilities = vim.lsp.protocol.make_client_capabilities()
local servers = {"bashls", "pyright", "rust_analyzer", "tsserver", "clangd", "sumneko_lua"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities),
    flags = {
      debounce_text_changes = 150
    }
  }
end
--lsp config

--lsp saga

--local saga = require "lspsaga"
--
---- add your config value here
---- default value
--saga.init_lsp_saga {
--  use_saga_diagnostic_sign = true,
--  error_sign = "🉐",
--  warn_sign = "✋️",
--  hint_sign = "🐧",
--  infor_sign = "",
--  dianostic_header_icon = "   ",
--  code_action_icon = " ",
--  code_action_prompt = {
--    enable = true,
--    sign = true,
--    sign_priority = 20,
--    virtual_text = true
--  },
--  finder_definition_icon = "  ",
--  finder_reference_icon = "  ",
--  max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
--  finder_action_keys = {
--    open = "o",
--    vsplit = "s",
--    split = "i",
--    quit = "q",
--    scroll_down = "<C-f>",
--    scroll_up = "<C-b>" -- quit can be a table
--  },
--  code_action_keys = {
--    quit = "q",
--    exec = "<CR>"
--  },
--  rename_action_keys = {
--    quit = "<C-c>",
--    exec = "<CR>" -- quit can be a table
--  },
--  definition_preview_icon = "  ",
--  --"single" "double" "round" "plus",
--  border_style = "single",
--  rename_prompt_prefix = "➤",
--  -- if you don't use nvim-lspconfig you must pass your server name and
--  -- the related filetypes into this table
--  -- like server_filetype_map = {metals = {'sbt', 'scala'}}
--  server_filetype_map = {}
--}
--lsp saga

--local function setup_servers()
--  require "lspinstall".setup()
--  local servers = require "lspinstall".installed_servers()
--  for _, server in pairs(servers) do
--    require "lspconfig"[server].setup {}
--  end
--end
--
--setup_servers()
--
---- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
--require "lspinstall".post_install_hook = function()
--  setup_servers() -- reload installed servers
--  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
--end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits"
  }
}
--local lsp_status = require("lsp-status")
--lsp_status.config {
--  select_symbol = function(cursor_pos, symbol)
--    if symbol.valueRange then
--      local value_range = {
--        ["start"] = {
--          character = 0,
--          line = vim.fn.byte2line(symbol.valueRange[1])
--        },
--        ["end"] = {
--          character = 0,
--          line = vim.fn.byte2line(symbol.valueRange[2])
--        }
--      }
--
--      return require("lsp-status.util").in_range(cursor_pos, value_range)
--    end
--  end
--}
--lsp_status.register_progress()
--lsp_status.register_progress()

local lspconfig = require("lspconfig")
--lspconfig.pyls_ms.setup({
--  handlers = lsp_status.extensions.pyls_ms.setup(),
--  settings = { python = { workspaceSymbols = { enabled = true }}},
--  on_attach = lsp_status.on_attach,
--  capabilities = lsp_status.capabilities
--})
vim.cmd [[if has('nvim-0.5')
  augroup lsp
    au!
    au FileType java lua require('jdtls').start_or_attach({cmd = {'launch_jdtls'}})
  augroup end
endif
]]

--formatter.nvim

require("formatter").setup(
  {
    filetype = {
      html = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      css = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      javascript = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      cpp = {
        -- clang-format
        function()
          return {
            exe = "clang-format",
            args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
            stdin = true,
            cwd = vim.fn.expand("%:p:h") -- Run clang-format in cwd of the file.
          }
        end
      },
      python = {
        -- clang-format
        function()
          return {
            exe = "black",
            --args = {},
            stdin = false
          }
        end
      },
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      }
    }
  }
)
vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py,*.html,*.css,*.cpp,*.c,*.js,*.rs,*.lua FormatWrite
augroup END
]],
  true
)
--formatter.nvim
