require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "vim", "ocaml", "elixir", "erlang", "go", "typescript", "c", "cpp", "javascript", "lua", "rust" },

  -- ....
  -- ignore_install = {},
  -- modules = {},
  -- parser_install_dir = {},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
  indent = { enable = true },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    -- disable = function(lang, buf)
    --     local max_filesize = 100 * 1024 -- 100 KB
    --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    --     if ok and stats and stats.size > max_filesize then
    --         return true
    --     end
    -- end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 8, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 8, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 7, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = "-",
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

vim.keymap.set("n", [[<leader>tp]], [[:TSPlaygroundToggle<cr>]])
vim.cmd(" highlight TreesitterContextSeparator ctermbg=None guibg=None")

--vim.filetype.add {
  --extension = {
    --re = "reason",
  --},
--}


-- Install grammar with nvim-treesitter
--local list = require("nvim-treesitter.parsers").get_parser_configs()
--list.reason = {
  --install_info = {
    --url = "https://github.com/reasonml-editor/tree-sitter-reason",
    --files = { "src/parser.c", "src/scanner.c" },
    --branch = "master",
  --},
--}

-- Test my own custom parser for dune files

--local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
--parser_config.bend = {
  --install_info = {
    --url = "https://github.com/HigherOrderCO/tree-sitter-bend",
    --files = { "src/parser.c", "src/scanner.c" },
    --branch = "main",
  --},
--}

--vim.filetype.add({
  --extension = {
    --bend = "bend",
  --},
--})

--vim.treesitter.language.register("bend", { "bend" })

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.dune = {
--   install_info = {
--     url = "~/Developer/Ocaml/neotest/tree-sitter-dune",
--     files = { "src/parser.c", },
--     branch = "main",
--     generate_requires_npm = false,
--     requires_generate_from_grammar = false,
--   },
--   filetype = "dune",
-- }
-- vim.api.nvim_command [[autocmd BufNewFile,BufRead dune-project setfiletype dune]]
-- vim.api.nvim_command [[autocmd BufNewFile,BufRead dune         setfiletype dune]]
