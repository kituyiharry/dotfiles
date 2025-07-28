require("neotest").setup({
  adapters = {
    require("neotest-go")({
      experimental = {
        test_table = true,
      },
      args = { "-count=1", "-timeout=60s" }
    }),
    require('rustaceanvim.neotest')({}),
    --require("neotest-rust")({
        --args = { "--no-capture" },
        --dap_adapter = "lldb",
    --}),
  },
})

vim.cmd [[
  command! NeotestAll lua require("neotest").run.run(vim.fn.expand("%"))
  command! NeotestDebug lua require("neotest").run.run({ strategy = "dap" })
  nmap <leader>nt :Neotest run<CR>
  nmap <leader>no :Neotest output<CR>
  nmap <leader>no :Neotest output-panel<CR>
  nmap <leader>nf :Neotest run file<CR>
  nmap <leader>ns :Neotest summary<CR>
  nmap <leader>na :NeotestAll<CR>
  nmap <leader>nd :NeotestDebug<CR>
]]
