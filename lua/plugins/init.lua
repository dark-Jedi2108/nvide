vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      event = "UIEnter",
      config = "require('plugins.bufferline')"
  }
  use {
    'wbthomason/packer.nvim',
    cmd='require("plugins.commands").packer'
  }
  use {
    'lewis6991/impatient.nvim'
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'require("plugins.commands").treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config="require('plugins.treesitter')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    after = "nvim-treesitter"
  }
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    cmd = "NvimTreeToggle",
    config = "require('plugins.nvim-tree')"
  }
  use "kyazdani42/nvim-web-devicons"
  use {
    'windwp/nvim-autopairs',
    config = "require('plugins.autopair')",
    after = "nvim-cmp"
  }
  use {
    "folke/which-key.nvim",
    event = "BufWinEnter",
    config = "require('plugins.which-key')"
  }
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'}},
    cmd = "Telescope",
    config = "require('plugins.telescope')"
  }
  use{
    "goolord/alpha-nvim",
    requires = {"kyazdani42/nvim-web-devicons"},
    config = "require('plugins.alpha')",
    cmd = {
      "Alpha",
      "AlphaRedraw"
    },
    event="BufWinEnter",
  }
  use {'neovim/nvim-lspconfig'}
  use {
    'rafamadriz/friendly-snippets',
    event="InsertEnter"
  }
  use {'hrsh7th/nvim-cmp',
    after="friendly-snippets",
    config="require('plugins.cmp')"
  }
  use {
    'L3MON4D3/LuaSnip',
    after="nvim-cmp",
    config="require('plugins.luasnip')"
  }
  use {
    'saadparwaiz1/cmp_luasnip',
    after="LuaSnip"
  }
  use {
    'hrsh7th/cmp-nvim-lua',
    after="cmp_luasnip"
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    after="cmp-nvim-lua"
  }
  use {
    'hrsh7th/cmp-buffer',
    after="cmp-nvim-lsp"
  }
  use {
    'hrsh7th/cmp-path',
    after="cmp-buffer"
  }
  use {"dstein64/vim-startuptime", cmd="StartupTime"}
  use { 'williamboman/nvim-lsp-installer',
    cmd = {
      "LspInstallInfo",
      "LspInstallLog",
      "LspStart",
      },
    module = "nvim-lsp-installer",
    config="require('plugins.lsp-installer')"
  }
  use {
    "akinsho/toggleterm.nvim",
    config = "require('plugins.toggleterm')",
    event="BufWinEnter"
  }
  use {"lewis6991/gitsigns.nvim",
  event="BufWinEnter",
  config = function()
    require('gitsigns').setup()
  end }
end)

