local dap = require('dap')
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

-- If you want to use this for Rust and C, add something like this:
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

---golang

dap.adapters.delve = {
  type = 'server',
  port = '${port}',
  executable = {
    command = 'dlv',
    args = {'dap', '-l', '127.0.0.1:${port}'},
  }
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}"
  },
  {
    type = "delve",
    name = "Debug test", -- configuration for debugging test files
    request = "launch",
    mode = "test",
    program = "${file}"
  },
  -- works with go.mod packages and sub packages 
  {
    type = "delve",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}"
  }
}
