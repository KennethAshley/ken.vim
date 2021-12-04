local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-web-devicons'

  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'

  Plug 'numToStr/Comment.nvim'

  Plug 'ggandor/lightspeed.nvim'

  Plug('filipdutescu/renamer.nvim', { branch = 'master' })

  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-cmdline'

  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  Plug 'itchyny/lightline.vim'
  Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
  -- Plug 'morhetz/gruvbox'
  Plug 'jiangmiao/auto-pairs'
  Plug 'joshdick/onedark.vim'

vim.call('plug#end')