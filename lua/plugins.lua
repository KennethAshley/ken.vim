local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
  -- lua functions.
  Plug 'nvim-lua/plenary.nvim'

  -- Nvim Treesitter configurations and abstraction layer
  Plug('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  -- fuzzy finder
  Plug 'nvim-telescope/telescope.nvim'

  -- Indent guides for Neovim
  Plug 'lukas-reineke/indent-blankline.nvim'

  -- icons
  Plug 'kyazdani42/nvim-web-devicons'

  -- LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'

  -- comment plugin for neovim
  Plug 'numToStr/Comment.nvim'

  -- motion plugin
  Plug 'ggandor/lightspeed.nvim'

  -- Status line
  Plug 'nvim-lualine/lualine.nvim'

  -- renaming UI for Neovim, writen in Lua.
  Plug('filipdutescu/renamer.nvim', { branch = 'master' })

  -- dashboard
  Plug 'goolord/alpha-nvim'

  -- autocomplete
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  -- autopair
  Plug 'windwp/nvim-autopairs'

  -- colorschemes
  Plug 'navarasu/onedark.nvim'

vim.call('plug#end')