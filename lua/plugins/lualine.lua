-----------------------------------------------------------
-- Neovim statusline plugin
-----------------------------------------------------------

-- Plugin: lualine.nvim
-- https://github.com/nvim-lualine/lualine.nvim

local lualine = require('lualine')

lualine.setup({
  optons = {
    theme = 'ayu_mirage',
    icons_enabled = false,
  }
})
