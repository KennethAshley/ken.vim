-----------------------------------------------------------
-- A neovim lua plugin to help easily manage multiple terminal windows
-----------------------------------------------------------

-- Plugin: toggleterm.nvim
-- https://github.com/akinsho/toggleterm.nvim

require("toggleterm").setup({
  open_mapping = [[<leader>t]],
  insert_mappings = false,
})
