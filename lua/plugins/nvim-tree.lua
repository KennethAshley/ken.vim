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

