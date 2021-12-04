-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- Telescope find files
map('n', '<C-p>', '<cmd>Telescope find_files<CR>', default_opts)

-- Telescope search
map('n', '<C-f>', '<cmd>Telescope live_grep<CR>', default_opts)

-- Telescope file browser
map('n', '<C-b>', '<cmd>Telescope file_browser<CR>', default_opts)

-- Telescope file browser
map('n', '<C-leader>', '<cmd>Telescope buffers<CR>', default_opts)