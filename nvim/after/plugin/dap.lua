local dap = require('dap')

require('dapui').setup()

vim.keymap.set("n", "<leader>dgc", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>dgo", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>dgi", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>dgt", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>dgb", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dui", ":lua require'dapui'.toggle()<CR>")

require("dap-vscode-js").setup({
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
  -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
  -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
  -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
  -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript" }) do
  require("dap").configurations[language] = {
    -- ... -- see below
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require 'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
    }
  }
end

dap.adapters.lldb = {
  type = 'executable',
  command = '/opt/homebrew/opt/llvm/bin/lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
}

-- Flutter and Dart
-- But mostly flutter because dart ... ??

function FlutterDebug()
  dap.adapters.dart = {
    type = "executable",
    -- As of this writing, this functionality is open for review in https://github.com/flutter/flutter/pull/91802
    command = "flutter",
    args = { "debug_adapter" }
  }
  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch Flutter Program",
      -- The nvim-dap plugin populates this variable with the filename of the current buffer
      program = "${file}",
      -- The nvim-dap plugin populates this variable with the editor's current working directory
      cwd = "${workspaceFolder}",
      -- This gets forwarded to the Flutter CLI tool, substitute `linux` for whatever device you wish to launch
      toolArgs = { "-d", "macos" }
    }
  }
  dap.configurations.dart = dap.configurations.dart
end

-- If you want to use this for Rust and C, add something like this:
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
dap.configurations.zig = dap.configurations.cpp

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
--dap.configurations.go = {
--{
--type = "delve",
--name = "Debug",
--request = "launch",
--program = "${file}"
--},
--{
--type = "delve",
--name = "Debug test", -- configuration for debugging test files
--request = "launch",
--mode = "test",
--program = "${file}"
--},
---- works with go.mod packages and sub packages
--{
--type = "delve",
--name = "Debug test (go.mod)",
--request = "launch",
--mode = "test",
--program = "./${relativeFileDirname}"
--}
--}

--dap.adapters.delve = {
--type = "server",
--host = "127.0.0.1",
--port = 38697,
--}

---golang
require('dap-go').setup(
  {
    -- Additional dap configurations can be added.
    -- dap_configurations accepts a list of tables where each entry
    -- represents a dap configuration. For more details do:
    -- :help dap-configuration
    dap_configurations = {
      {
        -- Must be "go" or it will be ignored by the plugin
        type = "go",
        name = "Attach remote",
        mode = "remote",
        request = "attach",
        showLog = true,
        trace = "log",
        logOutput = "rpc",
        remotePath = "",
        cwd = vim.fn.getcwd(),
      },
    },
    -- delve configurations
    delve = {
      -- time to wait for delve to initialize the debug session.
      -- default to 20 seconds
      initialize_timeout_sec = 7,
      --a string that defines the port to start delve debugger.
      --default to string "${port}" which instructs nvim-dap
      --to start the process in a random available port
      --port = "${port}"
      host = "127.0.0.1",
      port = 38697
    },
  })

require("nvim-dap-virtual-text").setup({})
