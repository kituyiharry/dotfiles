local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()


lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
  'gopls',
  'ocamllsp',
  'elixirls',
  'erlangls',
  'pyright',
})

vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = "None", ctermfg = "None" })

require 'lspconfig'.sumneko_lua.setup {
  -- ... other configs
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<leader>ap'] = cmp.mapping.select_prev_item(cmp_select),
  ['<leader>an'] = cmp.mapping.select_next_item(cmp_select),
})

lsp.setup_nvim_cmp({ mapping = cmp_mappings })

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
  suggest_lsp_servers = false,
  -- not registered for some reason
  sign_icons = {
    error = '!',
    warn  = ' ',
    hint  = '💡',
    info  = '§'
  }
})

local signs = { Error = " ", Warn = " ", Hint = "💡", Info = "¡" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  --vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lsp.on_attach(function(client, bufnr)

  vim.api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    callback = function()
      local opts = {
        focusable = false,
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        border = 'rounded',
        source = 'always',
        prefix = ' ',
        scope = 'cursor',
      }
      vim.diagnostic.open_float(nil, opts)
    end
  })

  local opts = { buffer = bufnr, remap = false }

  if client.name == "eslint" then
    vim.cmd.LspStop('eslint')
    return
  end

  if client.server_capabilities.documentHighlightProvider then
    local group = vim.api.nvim_create_augroup("LSPDocumentHighlight", {})
    -- vim.opt.updatetime = 1000
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      buffer   = bufnr,
      group    = group,
      callback = function()
        vim.lsp.buf.document_highlight()
      end,
    })
    vim.api.nvim_create_autocmd({ "CursorMoved" }, {
      buffer   = bufnr,
      group    = group,
      callback = function()
        vim.lsp.buf.clear_references()
      end,
    })
  end

  client.server_capabilities.document_formatting = true
  if client.server_capabilities.document_formatting then
    local au_lsp = vim.api.nvim_create_augroup("eslint_lsp", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function()
        vim.lsp.buf.format(nil)
      end,
      group = au_lsp,
    })
  end

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>ck", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "<leader>cp", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>an", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "<leader>ap", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>qf", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)


vim.diagnostic.config({
  underline = true,
  virtual_text = {
    source = "always", -- Or "if_many"
  },
  float = {
    source = "always", -- Or "if_many"
  },
  signs = true,
})

vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

-- highlight references on Cursor events below
--vim.cmd [[autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()]]
--vim.cmd [[autocmd CursorHoldI  <buffer> lua vim.lsp.buf.document_highlight()]]
--vim.cmd [[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]]

lsp.setup()
