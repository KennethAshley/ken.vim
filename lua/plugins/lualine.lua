-----------------------------------------------------------
-- Neovim statusline plugin
-----------------------------------------------------------

-- Plugin: lualine.nvim
-- https://github.com/nvim-lualine/lualine.nvim

local lualine = require('lualine')

lualine.setup({
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
  }
})
