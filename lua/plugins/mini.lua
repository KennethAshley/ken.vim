-----------------------------------------------------------
--  Collection of minimal, independent, and fast Lua modules
-----------------------------------------------------------

-- Plugin: mini.nvim
-- https://github.com/echasnovski/mini.nvim

-- Autopairs
require('mini.pairs').setup()

-- Fast and familiar per-line code commenting.
require('mini.comment').setup()

-- Buffer removing (unshow, delete, wipeout) while saving window layout.
require('mini.bufremove').setup()

-- Fast surround plugin.
require('mini.surround').setup({
  mappings = {
    add = "sa", -- Add surrounding
    delete = "sd", -- Delete surrounding
    find = "sf", -- Find surrounding (to the right)
    find_left = "sF", -- Find surrounding (to the left)
    highlight = "sh", -- Highlight surrounding
    replace = "sr", -- Replace surrounding
    update_n_lines = "sn" -- Update `n_lines`
  }
})

