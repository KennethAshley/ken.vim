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
  disable_netrw = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {'.git', 'node_modules', '.cache', 'plugged', '.github'},
  },
  filters = {
    dotfiles = false,
    custom = { "^\\.git$", 'node_modules', '.cache', '.bin' },
    exclude = { ".gitignore" }
  },
  view = {
    width = 30,
    mappings = {
      list = {
        { key='h'   , action = 'h'},
        { key='l'   , action = 'edit' },
        { key='<cr>', action = 'edit' },
        { key='o'   , action = 'system_open' },
        { key='I'   , action = 'toggle_ignored' },
        { key='H'   , action = 'toggle_dotfiles' },
        { key='R'   , action = 'refresh' },
        { key='='   , action = 'preview' },
        { key='X'   , action = 'collapse_all', action_cb = lib.collapse_all },
      }
    }
  },
  actions = {
    open_file = {
      resize_window = true
    },
    change_dir = {
      restrict_above_cwd = true,
    },
  },
})
