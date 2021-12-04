-----------------------------------------------------------
-- Find, Filter, Preview, Pick. All lua, all the time.
-----------------------------------------------------------

-- Plugin: Telescope
-- https://github.com/nvim-telescope/telescope.nvim

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      sorting_strategy = "ascending",
      layout_config = {
        prompt_position = 'top',
      }
    },
    file_browser = {
      sorting_strategy = "ascending",
      layout_config = {
        prompt_position = 'top',
      }
    },
    buffers = {
      theme = "dropdown",
    }
  }
})