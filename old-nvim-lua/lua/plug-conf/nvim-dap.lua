config = function()
  require("core.dap").setup()
end

require("dapui").setup(
  {
    icons = {expanded = "▾", collapsed = "▸"},
    mappings = {
      -- Use a table to apply multiple mappings
      expand = {"<CR>", "<2-LeftMouse>"},
      open = "o",
      remove = "d",
      edit = "e",
      repl = "r"
    },
    sidebar = {
      open_on_start = false,
      -- You can change the order of elements in the sidebar
      elements = {
        -- Provide as ID strings or tables with "id" and "size" keys
        {
          id = "scopes",
          size = 0.25 -- Can be float or integer > 1
        },
        {id = "breakpoints", size = 0.25},
        {id = "stacks", size = 0.25},
        {id = "watches", size = 00.25}
      },
      size = 40,
      position = "left" -- Can be "left" or "right"
    },
    tray = {
      open_on_start = false,
      elements = {"repl"},
      size = 10,
      position = "bottom" -- Can be "bottom" or "top"
    },
    floating = {
      max_height = nil, -- These can be integers or a float between 0 and 1.
      max_width = nil, -- Floats will be treated as percentage of your screen.
      mappings = {
        close = {"q", "<Esc>"}
      }
    },
    windows = {indent = 1}
  }
)
local dap = require("dap")
dap.adapters.python = {
  type = "executable",
  command = "x/debugpy/bin/python",
  args = {"-m", "debugpy.adapter"}
}
dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = "launch",
    name = "Launch file",
    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}", -- This configuration will launch the current file if used.
    pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
        return cwd .. "/venv/bin/python"
      elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
        return cwd .. "/.venv/bin/python"
      else
        return "/usr/bin/python"
      end
    end
  }
}
dap.adapters.cppdbg = {
  type = "executable",
  command = "/home/prodip/.local/share/nvim/dapinstall/ccppr_vsc_dbg/extension/debugAdapters/OpenDebugAD7 "
}
local dap = require("dap")
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input(
        "/home/prodip/.local/share/nvim/dapinstall/ccppr_vsc_dbg/extension/debugAdapters/OpenDebugAD7: ",
        vim.fn.getcwd() .. "/",
        "file"
      )
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true
  },
  {
    name = "Attach to gdbserver :1234",
    type = "cppdbg",
    request = "launch",
    MIMode = "gdb",
    miDebuggerServerAddress = "localhost:1234",
    miDebuggerPath = "/usr/bin/gdb",
    cwd = "${workspaceFolder}",
    program = function()
      return vim.fn.input(
        "/home/prodip/.local/share/nvim/dapinstall/ccppr_vsc_dbg/extension/debugAdapters/OpenDebugAD7: ",
        vim.fn.getcwd() .. "/",
        "file"
      )
    end
  }
}
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
