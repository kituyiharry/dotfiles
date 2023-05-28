-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Configure plugins in after/{...}.lua
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                          , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- FZF better
  use('junegunn/fzf', { run = " -> fzf#install()" })
  use('junegunn/fzf.vim')

  -- Gruvbox
  use({ "ellisonleao/gruvbox.nvim", as = 'gruvbox',
    config = function()
      vim.cmd [[colorscheme gruvbox]]
    end })

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

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      --{'rafamadriz/friendly-snippets'},
    }
  }

  use('liuchengxu/vista.vim')
  use('dart-lang/dart-vim-plugin')

  use {'stevearc/dressing.nvim'}

  use { 'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    }
  }
  use('mhinz/vim-startify')
  use('junegunn/goyo.vim')
  use('fatih/vim-go', { run = ':GoUpdateBinaries' })
  use('onsails/lspkind.nvim')
  use('github/copilot.vim')
  use('jbyuki/venn.nvim')
  use('simrat39/rust-tools.nvim') -- tools

  -- Debugging
  use('mfussenegger/nvim-dap')
  use 'leoluz/nvim-dap-go'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use "folke/neodev.nvim"

  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  }
  use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
  use { "ziglang/zig.vim" }


  -- You can alias plugin names
end)
