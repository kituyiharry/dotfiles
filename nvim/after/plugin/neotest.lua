require("neotest").setup({
  adapters = {
    require("neotest-go")({
      experimental = {
        test_table = true,
      },
      args = { "-count=1", "-timeout=60s" }
    }),
    require("neotest-rust")({
        args = { "--no-capture" },
        dap_adapter = "lldb",
    }),
  },
})

vim.cmd [[
  nmap <leader>nt :Neotest run<CR>
  nmap <leader>no :Neotest output<CR>
  nmap <leader>no :Neotest output-panel<CR>
  nmap <leader>na :Neotest run file<CR>
  nmap <leader>nf :Neotest run file<CR>
]]
