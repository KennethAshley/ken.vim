-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local packer = require('packer')

return packer.startup(function()
  -- Packer can manage itself
  use  'wbthomason/packer.nvim'

  -- Snippet Engine for Neovim written in Lua
  use 'L3MON4D3/LuaSnip'

  -- Lua functions.
  use  'nvim-lua/plenary.nvim'

  -- Nvim Treesitter configurations and abstraction layer
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Find, Filter, Preview, Pick. All lua, all the time.
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'}
    }
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- LSP
  use 'neovim/nvim-lspconfig'
  -- use  'tami5/lspsaga.nvim'

  -- The fastest Neovim colorizer.
  use 'norcalli/nvim-colorizer.lua'

  -- Colorscheme
  use 'eddyekofo94/gruvbox-flat.nvim'

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  -- Git integration for buffers
  use 'lewis6991/gitsigns.nvim'

  -- Useful helpers
  use { 'echasnovski/mini.nvim', branch = 'stable' }

  -- Git
  use 'kdheepak/lazygit.nvim'

  -- Project Management
  use 'ahmedkhalf/project.nvim'

  -- Extensible Neovim Scrollbar
  use 'petertriho/nvim-scrollbar'

  -- Better Search
  use 'kevinhwang91/nvim-hlslens'

  -- Better startup
  use 'lewis6991/impatient.nvim'

  -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }

  use "vimwiki/vimwiki"

  use {'iamcco/markdown-preview.nvim'}

  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    }

end)
