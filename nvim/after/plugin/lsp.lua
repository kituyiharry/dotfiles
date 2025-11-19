local lsp = require('lsp-zero')

--local function dump(o)
   --if type(o) == 'table' then
      --local s = '{ '
      --for k,v in pairs(o) do
         --if type(k) ~= 'number' then k = '"'..k..'"' end
         --s = s .. '['..k..'] = ' .. dump(v) .. ','
      --end
      --return s .. '} '
   --else
      --return tostring(o)
   --end
--end

--print(dump(lsp))

--lsp.preset('recommended')
--lsp.setup()

-- lsp.ensure_installed({
--   'tsserver',
--   'eslint',
--   --'sumneko_lua',
--   'lua_ls',
--   --'rust_analyzer',
--   'gopls',
--   'ocamllsp',
--   'elixirls',
--   'erlangls',
--   'pyright',
-- })

--vim.cmd("hi NormalFloat guibg=#32302F")
--vim.cmd("hi FloatBorder guibg=#32302F guifg=#F2E2C3")
vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = "None", ctermfg = "None" })

--local lspconfig = require("lspconfig")
local lspconfig = vim.lsp

--lspconfig.rust_analyzer = function()
lspconfig.config('rust_analyzer', {
    enable=false
})

vim.g.rustaceanvim = {
  tools = {
    float_win_config = {
      border = 'rounded'
    }
  },
  server = {
    on_attach = function(_, _bufnr)
      --vim.lsp.inlay_hint.enable(true)
      --set_keybinds(bufnr)

      -- require("which-key").register({
      --   ["<Leader>l"] = {
      --     a = { "<Cmd>RustLsp codeAction<CR>", "Code Actions" },
      --     c = { "<Cmd>RustLsp openCargo<CR>", "Open Cargo.toml" },
      --     p = { "<Cmd>RustLsp parentModule<CR>", "Parent Module" },
      --     R = { "<Cmd>RustLsp runnables<CR>", "Runnables" },
      --     D = { "<Cmd>RustLsp debuggables<CR>", "Debuggables" },
      --     j = { "<Cmd>RustLsp joinLines<CR>", "Join Lines" },
      --     l = { "<Cmd>RustLsp renderDiagnostic<CR>", "Line Info" },
      --     i = {
      --       name = "Inlay Hints",
      --       e = { function() vim.lsp.inlay_hint.enable(bufnr, true) end, "Enable" },
      --       d = { function() vim.lsp.inlay_hint.enable(bufnr, false) end, "Disable" },
      --     },
      --   },
      --   ["<A-k>"] = { "<Cmd>RustLsp moveItem up<CR>", "Move item up" },
      --   ["<A-j>"] = { "<Cmd>RustLsp moveItem down<CR>", "Move item down" },
      --   K = { "<Cmd>RustLsp hover actions<CR>", "Documentation" },
      -- }, { buffer = bufnr })
    end,
  },
  -- server = {
  --   cmd = function()
  --     local mason_registry = require('mason-registry')
  --     local ra_binary = mason_registry.is_installed('rust-analyzer') 
  --     -- This may need to be tweaked, depending on the operating system.
  --     and mason_registry.get_package('rust-analyzer'):get_install_path() .. "/rust-analyzer"
  --     or "rust-analyzer"
  --     return { ra_binary } -- You can add args to the list, such as '--log-file'
  --   end,
  -- },
}

-- add bend lsp as custom
--local configs = require 'lspconfig.configs'
local configs = vim.lsp.config
if not configs.bend then
  configs.bend = {
    default_config = {
      cmd       = { 'bend-language-server' },
      --root_dir = lspconfig.util.root_pattern('.git'),
      --root_dir  = lspconfig.util.root_pattern("*.bend"),
      filetypes = { 'bend' },
    },
  }
end
--lspconfig.bend.setup {}

if not configs.mojo then 
    --local builtin = require('telescope.builtin')
    configs.mojo = {
        default_config = {
            cmd = { 'pixi', 'run', 'mojo-lsp-server' },
            filetypes = { 'mojo' },
            root_dir = function(fname)
                --builtin.git_files
                return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
            end,
            single_file_support = true,
        },
        docs = {
            description = [[
                https://github.com/modularml/mojo
                `mojo-lsp-server` can be installed [via Modular](https://developer.modular.com/download)
                or magic shell
            ]],
        },
    }
end

--lspconfig.config.mojo.setup {}

--require 'lspconfig'.sumneko_lua.setup {
--lspconfig.config.lua_ls.setup {
  -- ... other configs
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  --settings = {
    --Lua = {
      --completion = {
        --callSnippet = "Replace"
      --},
      --diagnostics = {
        --globals = { 'vim' }
      --},
      --workspace = {
        --library = {
          --[vim.fn.expand('$VIMRUNTIME/lua')] = true,
          --[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
        --}
      --}
    --}
  --}
--}

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
lsp.extend_cmp({
  ['<leader>ap'] = cmp.mapping.select_prev_item(cmp_select),
  ['<leader>an'] = cmp.mapping.select_next_item(cmp_select),
  ['<cr>']       = cmp.mapping.confirm({ select = true }),
  ['<Tab>']      = nil,
  ['<S-Tab>']    = nil,
})

--[[lsp.setup_nvim_cmp({ mapping = cmp_mappings })]]

-- disable completion with tab
-- this helps with copilot setup
--cmp_mappings['<Tab>'] = nil
--cmp_mappings['<S-Tab>'] = nil

--lsp.setup_nvim_cmp({
  --mapping = cmp_mappings
--})

--[[lsp.set_preferences({]]
  --[[suggest_lsp_servers = false,]]
  -- not registered for some reason
--})

lsp.set_sign_icons({
  error = '!',
  warn  = ' ',
  hint  = '💡',
  info  = '§'
})

local signs = { Error = " ", Warn = " ", Hint = "💡", Info = "¡" }

vim.diagnostic.config({ signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = signs.Error,
            [vim.diagnostic.severity.WARN]  = signs.Warn,
            [vim.diagnostic.severity.INFO]  = signs.Info,
            [vim.diagnostic.severity.HINT]  = signs.Hint,
        }
    }
})

-- deprecated
--for type, icon in pairs(signs) do
  --local hl = "DiagnosticSign" .. type
  --vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
--end

local lspkind = require('lspkind')

cmp.setup {
  window = {
    completion    = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>']  = cmp.mapping.complete(),
    -- ['<C-e>']   = cmp.mapping.abort(),
    -- ['<CR>']    = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<leader>ap'] = cmp.mapping.select_prev_item(cmp_select),
    ['<leader>an'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>']       = cmp.mapping.confirm({ select = true }),
    ['<Tab>']      = cmp.mapping.confirm({ select = true }),
    ['<S-Tab>']    = cmp.mapping.confirm({ select = true }),
  }),
  formatting = {
    expandable_indicator = true,
    format = lspkind.cmp_format({
      mode = 'symbol',       -- show only symbol annotations
      maxwidth = 50,         -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function(_, vim_item)
        --...
        return vim_item
      end
    })
  }
}

local lsp_on_attach = (function(_, bufnr)

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

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>ck", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "<leader>cp", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<leader>ct", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>cw", vim.lsp.buf.workspace_symbol, opts)


  vim.keymap.set("n", "K", function ()
        vim.lsp.buf.hover({ border="rounded" })
  end, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>an", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "<leader>ap", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>qf", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.on_attach(lsp_on_attach)

-- local rust_opts = {
--   tools = { -- rust-tools options
-- 
--     -- how to execute terminal commands
--     -- options right now: termopen / quickfix
--     executor = require("rust-tools.executors").termopen,
-- 
--     -- callback to execute once rust-analyzer is done initializing the workspace
--     -- The callback receives one parameter indicating the `health` of the server: "ok" | "warning" | "error"
--     on_initialized = nil,
-- 
--     -- automatically call RustReloadWorkspace when writing to a Cargo.toml file.
--     reload_workspace_from_cargo_toml = true,
-- 
--     -- These apply to the default RustSetInlayHints command
--     inlay_hints = {
--       -- automatically set inlay hints (type hints)
--       -- default: true
--       auto = true,
-- 
--       -- Only show inlay hints for the current line
--       only_current_line = false,
-- 
--       -- whether to show parameter hints with the inlay hints or not
--       -- default: true
--       show_parameter_hints = true,
-- 
--       -- prefix for parameter hints
--       -- default: "<-"
--       parameter_hints_prefix = "<- ",
-- 
--       -- prefix for all the other hints (type, chaining)
--       -- default: "=>"
--       other_hints_prefix = "=> ",
-- 
--       -- whether to align to the length of the longest line in the file
--       max_len_align = false,
-- 
--       -- padding from the left if max_len_align is true
--       max_len_align_padding = 1,
-- 
--       -- whether to align to the extreme right or not
--       right_align = false,
-- 
--       -- padding from the right if right_align is true
--       right_align_padding = 7,
-- 
--       -- The color of the hints
--       highlight = "Comment",
--     },
-- 
--     -- options same as lsp hover / vim.lsp.util.open_floating_preview()
--     hover_actions = {
-- 
--       -- the border that is used for the hover window
--       -- see vim.api.nvim_open_win()
--       border = {
--         { "╭", "FloatBorder" },
--         { "─", "FloatBorder" },
--         { "╮", "FloatBorder" },
--         { "│", "FloatBorder" },
--         { "╯", "FloatBorder" },
--         { "─", "FloatBorder" },
--         { "╰", "FloatBorder" },
--         { "│", "FloatBorder" },
--       },
-- 
--       -- Maximal width of the hover window. Nil means no max.
--       max_width = nil,
-- 
--       -- Maximal height of the hover window. Nil means no max.
--       max_height = nil,
-- 
--       -- whether the hover action window gets automatically focused
--       -- default: false
--       auto_focus = false,
--     },
-- 
--     -- settings for showing the crate graph based on graphviz and the dot
--     -- command
--     crate_graph = {
--       -- Backend used for displaying the graph
--       -- see: https://graphviz.org/docs/outputs/
--       -- default: x11
--       backend = "x11",
--       -- where to store the output, nil for no output stored (relative
--       -- path from pwd)
--       -- default: nil
--       output = nil,
--       -- true for all crates.io and external crates, false only the local
--       -- crates
--       -- default: true
--       full = true,
-- 
--       -- List of backends found on: https://graphviz.org/docs/outputs/
--       -- Is used for input validation and autocompletion
--       -- Last updated: 2021-08-26
--       enabled_graphviz_backends = {
--         "bmp",
--         "cgimage",
--         "canon",
--         "dot",
--         "gv",
--         "xdot",
--         "xdot1.2",
--         "xdot1.4",
--         "eps",
--         "exr",
--         "fig",
--         "gd",
--         "gd2",
--         "gif",
--         "gtk",
--         "ico",
--         "cmap",
--         "ismap",
--         "imap",
--         "cmapx",
--         "imap_np",
--         "cmapx_np",
--         "jpg",
--         "jpeg",
--         "jpe",
--         "jp2",
--         "json",
--         "json0",
--         "dot_json",
--         "xdot_json",
--         "pdf",
--         "pic",
--         "pct",
--         "pict",
--         "plain",
--         "plain-ext",
--         "png",
--         "pov",
--         "ps",
--         "ps2",
--         "psd",
--         "sgi",
--         "svg",
--         "svgz",
--         "tga",
--         "tiff",
--         "tif",
--         "tk",
--         "vml",
--         "vmlz",
--         "wbmp",
--         "webp",
--         "xlib",
--         "x11",
--       },
--     },
--   },
-- 
--   -- all the opts to send to nvim-lspconfig
--   -- these override the defaults set by rust-tools.nvim
--   -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
--   server = {
--     -- standalone file support
--     -- setting it to false may improve startup time
--     standalone = true,
--     on_attach = lsp_on_attach,
--   }, -- rust-analyzer options
-- 
--   -- debugging stuff
--   dap = {
--     adapter = {
--       type = "executable",
--       command = "lldb-vscode",
--       name = "rt_lldb",
--     },
--   },
-- }
-- 
-- require('rust-tools').setup(rust_opts)

-- no more dart
--lsp.setup_servers({'dartls', force = true})

vim.diagnostic.config({
  underline = true,
  virtual_text = false, -- Or "if_many" 
  float =  function (namespace, bufnr)
    return {
        source = true, -- Or "if_many"
        border = 'rounded',
    }
  end,
  signs = true,
})

-- lua things
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

-- highlight references on Cursor events below (automatically done)
--vim.cmd [[autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()]]
--vim.cmd [[autocmd CursorHoldI  <buffer> lua vim.lsp.buf.document_highlight()]]
--vim.cmd [[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]]

--[[lsp.setup()]]

-- https://vi.stackexchange.com/questions/39074/user-borders-around-lsp-floating-windows
local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = _border
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = _border
  }
)

--vim.diagnostic.config{
  --float={border=_border}
--}

require('lspconfig.ui.windows').default_options = {
  border = _border
}

--vim.api.nvim_create_autocmd('LspAttach', {
  --callback = function(args)
    --local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    --if client.server_capabilities.inlayHintProvider then
      --vim.lsp.inlay_hint.enable(true)
    --end
  --end,
--})

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
--require("lazydev").setup({
  -- add any options here, or leave empty to use the default settings
--})
