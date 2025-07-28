local mason = require("mason")
mason.setup({
    ui = {
        border = "rounded"
    }
})
require("mason-lspconfig").setup({
   automatic_enable = {
       exclude = {
           "rust_analyzer",
           --"ts_ls"
       }
   },
  handlers = {
    function(server_name)
      if server_name ~= 'rust_analyzer' and server_name ~= 'rust-analyzer' then
        require('lspconfig')[server_name].setup({})
      end
    end,
  },
})
require('mason-lspconfig').setup {
    -- rustaceanvim will handle lsp
    ['rust_analyzer'] = function() end,
    ['rust-analyzer'] = function() end,
}

