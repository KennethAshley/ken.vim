-----------------------------------------------------------
-- File manager configuration file
-----------------------------------------------------------

-- Plugin: nvim-tree
-- https://github.com/kyazdani42/nvim-tree.lua

-- Keybindings are defined in `keymapping.lua`:
--- https://github.com/kyazdani42/nvim-tree.lua#keybindings

-- Note: options under the g: command should be set BEFORE running the
--- setup function:
--- https://github.com/kyazdani42/nvim-tree.lua#setup
--- See: `help NvimTree`
local g = vim.g

g.nvim_tree_icons = {
  default = '',
  symlink = '',
}

g.nvim_tree_show_icons = {
  git = 1,
  folders = 1, -- or 0,
  files = 1, -- or 0,
  folder_arrows = 1 -- or 0
}

g.nvim_tree_git_hl = 0

local tree = require('nvim-tree')
local tree_cb = require('nvim-tree.config').nvim_tree_callback
local view = require('nvim-tree.view')

tree.setup({
  update_focused_file = {
    enable = true,
    ignore_list = {'.git', 'node_modules', '.cache', 'plugged', '.github'},
  },
  filters = { dotfiles = true },
  view = {
    auto_resize = true,
    mappings = {
      list = {
        { key='h'   , cb=tree_cb('close_node')},
        { key='l'   , cb=tree_cb("edit") },
        { key='o'   , cb=tree_cb("edit") },
        { key='<cr>', cb=tree_cb("edit") },
        { key='I'   , cb=tree_cb("toggle_ignored") },
        { key='H'   , cb=tree_cb("toggle_dotfiles") },
        { key='R'   , cb=tree_cb("refresh") },
        { key='='   , cb=tree_cb("preview") }
      }
    }
  }
})

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

map('n', '<C-b>', ':NvimTreeToggle<CR>', default_opts)
