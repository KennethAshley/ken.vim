-----------------------------------------------------------
-- Treesitter configuration file
-----------------------------------------------------------

-- Plugin: nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter


local treesitter = require('nvim-treesitter.configs')

treesitter.setup({
  highlight = {
    enable = true,
  },
})
