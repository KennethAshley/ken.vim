-----------------------------------------------------------
-- File manager configuration file
-----------------------------------------------------------

-- Plugin: neo-tree
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local tree = require('neo-tree')

tree.setup({
  default_component_configs = {
    indent = {
      padding = 0, -- extra padding on left hand side
    }
  },
  window = {
    width = 30,
    mappings = {
      ["l"] = "open",
      ["h"] = "close_node"
    }
  },
  filesystem = {
    follow_current_file = true,
  }
})
