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

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Tab between buffers
map('n', '<tab>', ':b#<cr>', default_opts)

-- Keeping it centered
map('n', 'n', 'nzzzv', default_opts)
map('n', 'N', 'Nzzzv', default_opts)
map('n', 'J', 'mzJ`z', default_opts)

-- Undo breakpoints
map('i', ',', ',<c-g>u', default_opts)
map('i', '.', '.<c-g>u', default_opts)
map('i', '!', '!<c-g>u', default_opts)
map('i', '?', '?<c-g>u', default_opts)

-- Neogit
map('n', '<leader>g', ':Neogit<cr>', default_opts)

-- Closing buffers
map('n', '<leader>q', ':lua MiniBufremove.delete()<cr>', default_opts)

map('n', '<leader>c', ':nohlsearch<cr>:call minimap#vim#ClearColorSearch()<cr>', default_opts)

map('n', '<C-b>', ':NvimTreeToggle<CR>', default_opts)
