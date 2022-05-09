local colors = require('gruvbox.colors')
local theme = colors.setup()

local hl = {
  langs = {},
  plugins = {},
}

local highlight = vim.api.nvim_set_hl

local function load_highlights(highlights)
  for group_name, group_settings in pairs(highlights) do
    highlight(0, group_name, group_settings)
  end
end

hl.common = {
  CursorLine = {
    bg = theme.bg
  },
  Search = {
    fg = theme.bg,
    bg = theme.blue
  },
  IncSearch = {
    fg = theme.bg,
    bg = theme.blue
  },
  CurSearch = {
    fg = theme.bg,
    bg = theme.blue
  },
}

hl.plugins.mini = {
  MiniStatuslineDevinfo = {
    bg = theme.bg,
  },
  MiniStatuslineFilename = {
    bg = theme.bg,
  },
  MiniStatuslineModeNormal = {
    fg = theme.bg,
    bg = theme.blue,
  },
  MiniStatuslineModeInsert = {
    fg = theme.bg,
    bg = theme.green,
  },
  MiniStatuslineModeVisual = {
    fg = theme.bg,
    bg = theme.orange,
  },
  MiniStatuslineModeCommand = {
    fg = theme.bg,
    bg = theme.red,
  }
}

local function load_sync()
  load_highlights(hl.common)

  for _, group in pairs(hl.plugins) do
      load_highlights(group)
  end
end

load_sync()
