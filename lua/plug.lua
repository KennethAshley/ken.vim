local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
  -- Lua functions.
  Plug 'nvim-lua/plenary.nvim'

  -- Nvim Treesitter configurations and abstraction layer
  Plug('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  -- Find, Filter, Preview, Pick. All lua, all the time.
  Plug 'nvim-telescope/telescope.nvim'

  -- Indent guides for Neovim
  Plug 'lukas-reineke/indent-blankline.nvim'

  -- Icons
  Plug 'kyazdani42/nvim-web-devicons'

  -- LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'

  -- The fastest Neovim colorizer.
  Plug 'norcalli/nvim-colorizer.lua'

  -- Motion plugin
  Plug 'ggandor/lightspeed.nvim'

  -- Autocomplete
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  -- Colorscheme
  Plug 'eddyekofo94/gruvbox-flat.nvim'

  -- File tree
  Plug 'kyazdani42/nvim-tree.lua'

  -- Git integration for buffers
  Plug 'lewis6991/gitsigns.nvim'

  -- Useful helpers
  Plug('echasnovski/mini.nvim', { branch = 'stable' })

  -- Git
  Plug 'TimUntersberger/neogit'

vim.call('plug#end')
