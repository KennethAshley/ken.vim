--[[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝


Neovim init file
Version: 0.42.0 - 2021/12/01
Maintainer: Raleigh_CA
Website: https://github.com/KennethAshley/ken.vim

--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('plugins')
require('settings')
require('colors')
require('keymaps')

require('plugins/impatient')
-- require('plugins/nvim-tree')
require('plugins/neo-tree')
require('plugins/telescope')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-treesitter')
require('plugins/colorizer')
require('plugins/gitsigns')
require('plugins/mini')
require('plugins/project')
require('plugins/scrollbar')
require('plugins/trouble')
