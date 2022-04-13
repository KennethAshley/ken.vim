-----------------------------------------------------------
--  Collection of minimal, independent, and fast Lua modules
-----------------------------------------------------------

-- Plugin: mini.nvim
-- https://github.com/echasnovski/mini.nvim

-- Word under cursor
require('mini.jump').setup()

-- Word under cursor
require('mini.cursorword').setup()

-- Remove buffer
require('mini.bufremove').setup()

-- Autopairs
require('mini.pairs').setup()

-- Fast and familiar per-line code commenting.
require('mini.comment').setup()

-- Fast and familiar per-line code commenting.
require('mini.tabline').setup()


local Statusline = require('mini.statusline')

local setup_content = function()
  local mode, mode_hl = Statusline.section_mode({ trunc_width = 120 })
  local git           = Statusline.section_git({ trunc_width = 75 })
  local diagnostics   = Statusline.section_diagnostics({ trunc_width = 75 })
  local filename      = Statusline.section_filename({ trunc_width = 140 })
  -- local fileinfo      = Statusline.section_fileinfo({ trunc_width = 120 })
  local location      = Statusline.section_location({ trunc_width = 75 })

  return Statusline.combine_groups({
    { hl = mode_hl,                  strings = { mode } },
    { hl = 'MiniStatuslineDevinfo',  strings = { git, diagnostics } },
    '%<', -- Mark general truncate point
    { hl = 'MiniStatuslineFilename', strings = { filename } },
    '%=', -- End left alignment
    -- { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
    { hl = mode_hl,                  strings = { location } },
  })
end

-- Statusline
Statusline.setup({
  content = {
    active = setup_content
  }
})

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

