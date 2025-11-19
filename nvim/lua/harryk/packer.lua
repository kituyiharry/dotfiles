-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Configure plugins in after/{...}.lua
    use {
        'nvim-telescope/telescope.nvim', -- tag = '0.1.4', or, branch = '0.1.x',
        requires = {{ 'nvim-lua/plenary.nvim' }}
    }

    -- FZF better
    use('junegunn/fzf', { run = " -> fzf#install()" })
    use('junegunn/fzf.vim')

    -- Gruvbox
    use({ "ellisonleao/gruvbox.nvim", as = 'gruvbox',
        config = function()
            vim.cmd [[colorscheme gruvbox]]
        end
    })

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('nvim-treesitter/nvim-treesitter-context')

    -- NERDTree
    use('preservim/nerdtree')
    use('ryanoasis/vim-devicons')

    -- Git
    use('tpope/vim-fugitive')
    use('airblade/vim-gitgutter')

    -- Airline Icons
    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')

    -- Snippets
    use('SirVer/ultisnips')
    use('honza/vim-snippets')

    -- Comment remaps
    use('preservim/nerdcommenter')

    -- Formatting and Selection
    use('chrisbra/csv.vim')
    use('godlygeek/tabular')
    use('Yggdroot/indentLine')
    use('machakann/vim-highlightedyank')
    use('tpope/vim-surround')

    use { "folke/lazydev.nvim",
        --ft = "lua", -- only load on lua filespacker
        config = function()
            require'lazydev'.setup{}
        end,
         opts = {
            library = {
                "nvim-cmp/lua/cmp/types",
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${.3rd}/luvit-meta/library", words = { "vim%.uv" } },
                -- Library paths can be absolute
                --"~/projects/my-awesome-lib",
                -- Or relative, which means they will be resolved from the plugin dir.
                "lazy.nvim",
                -- It can also be a table with trigger words / mods
                -- Only load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                -- always load the LazyVim library
                "LazyVim",
                -- Only load the lazyvim library when the `LazyVim` global is found
                { path = "LazyVim", words = { "LazyVim" } },
                -- Load the wezterm types when the `wezterm` module is required
                -- Needs `justinsgithub/wezterm-types` to be installed
                --{ path = "wezterm-types", mods = { "wezterm" } },
                -- Load the xmake types when opening file named `xmake.lua`
                -- Needs `LelouchHe/xmake-luals-addon` to be installed
                --{ path = "xmake-luals-addon/library", files = { "xmake.lua" } },
            },
            -- This is the default
            enabled = function(root_dir)
                return vim.g.lazydev_enabled == nil and true or vim.g.lazydev_enabled
            end,
        },
    }
    --use "folke/neodev.nvim"

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim', 
                opts = {
                    ui = {
                        border = "rounded",
                    },
                },
            },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
            { 'hrsh7th/nvim-cmp', 
                opts = function(_, opts)
                    opts.sources = opts.sources or {}
                    table.insert(opts.sources, {
                        name = "lazydev",
                        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
                    })
                end,
            },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            --{ 'L3MON4D3/LuaSnip' },
            --{'rafamadriz/friendly-snippets'},
        }
    }

    use('liuchengxu/vista.vim')
    use('dart-lang/dart-vim-plugin')
    --use {'stevearc/dressing.nvim'}

    -- use { 'akinsho/flutter-tools.nvim',
    --   requires = {
    --     'nvim-lua/plenary.nvim',
    --     'stevearc/dressing.nvim', -- optional for vim.ui.select
    --   }
    -- }

    use('mhinz/vim-startify')
    use('junegunn/goyo.vim')
    use('fatih/vim-go', { run = ':GoUpdateBinaries' })
    use('onsails/lspkind.nvim')
    --use('github/copilot.vim') -- <- weirdo
    use('jbyuki/venn.nvim')
    --use('simrat39/rust-tools.nvim') -- tools

    -- Debugging
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'nvim-telescope/telescope-dap.nvim'

    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    use "RRethy/vim-illuminate" -- Does reference highlighting
    use "DNLHC/glance.nvim"

    -- use {
    --   "microsoft/vscode-js-debug",
    --   opt = true,
    --   run = "git clean -xfd && git reset --hard && git checkout package-lock.json && npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
    -- }

    --use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
    use { 'leoluz/nvim-dap-go' }
    use { "ziglang/zig.vim" }
    use { "nvim-neotest/nvim-nio" }
    use ({
        "nvim-neotest/neotest",
        requires = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter"
        },
        config = function()
            -- get neotest namespace (api call creates or returns namespace)
            local neotest_ns = vim.api.nvim_create_namespace("neotest")
            vim.diagnostic.config({
                virtual_text = {
                    format = function(diagnostic)
                        local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
                        return message
                    end,
                },
            }, neotest_ns)
        end,
    })

    --use 'rouge8/neotest-rust'
    use 'mrcjkb/rustaceanvim'
    --use {
        --'cordx56/rustowl',
        --build = 'cd rustowl && cargo install --path . --locked',
        --lazy = false, -- This plugin is already lazy
        --opts = {
            --client = {
                --on_attach = function(_, buffer)
                    --vim.keymap.set('n', '<leader>o', function()
                        --require('rustowl').toggle(buffer)
                    --end, { buffer = buffer, desc = 'Toggle RustOwl' })
                --end
            --},
        --},
    --}

    use 'nvim-neotest/neotest-go'

    --use {'kevinhwang91/nvim-bqf', ft = 'qf'}
    use {'kevinhwang91/nvim-bqf'}
    use {
        'ten3roberts/qf.nvim',
        config = function()
            require'qf'.setup{}
        end
    }

    --track todo and fixmes
    use {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    }

    use { 'hackwaly/ocaml-dap' }

    --use 'tweekmonster/startuptime.vim'
    --use 'stevearc/profile.nvim'

    -- You can alias plugin names
    --use '~/Developer/Ocaml/neotest/tree-sitter-dune'
    --use '~/Developer/Ocaml/neotest/dunetest.nvim'
end)
