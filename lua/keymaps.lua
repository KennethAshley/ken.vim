-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap  -- set global keymap
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

-- LazyGit
map('n', '<leader>g', ':LazyGit<cr>', default_opts)

-- Better Redo
map('n', 'U', '<C-R>', default_opts)

-- Closing buffers
-- map('n', '<C-BS>', ':bdelete<cr>', default_opts)

-- Clear Search
map('n', '<leader>c', ':noh<cr>', default_opts)

-- Delete buffer
map('n', '<C-w>', '<cmd>lua MiniBufremove.delete()<cr>', default_opts)

-- Toggle Nvim-tree
map('n', '<C-b>', ':NvimTreeToggle<CR>', default_opts)

-- Hlsearch Lens for Neovim
-- map('n', 'n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], default_opts)
-- map('n', 'N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], default_opts)
-- map('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], default_opts)
-- map('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], default_opts)
-- map('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], default_opts)
-- map('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], default_opts)

-- Undo breakpoints
map('i', ',', ',<c-g>u', default_opts)
map('i', '.', '.<c-g>u', default_opts)
map('i', '!', '!<c-g>u', default_opts)
map('i', '?', '?<c-g>u', default_opts)

