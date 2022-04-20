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
local lib = require('nvim-tree.lib')

tree.setup({
  open_on_setup = true,
  update_to_buf_dir = { enable = false },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    ignore_list = {'.git', 'node_modules', '.cache', 'plugged', '.github'},
  },
  filters = {
    dotfiles = false,
    custom = { '.git', 'node_modules', '.cache', '.bin' },
  },
  view = {
    auto_resize = true,
    mappings = {
      list = {
        { key='h'   , action = 'close_node'},
        { key='l'   , action = 'edit' },
        { key='o'   , action = 'edit' },
        { key='<cr>', action = 'edit' },
        { key='I'   , action = 'toggle_ignored' },
        { key='H'   , action = 'toggle_dotfiles' },
        { key='R'   , action = 'refresh' },
        { key='='   , action = 'preview' },
        { key='X'   , action = 'collapse_all', action_cb = lib.collapse_all },
      }
    }
  },
  renderer = {
    indent_markers = {
      enable = true
    }
  }
})

