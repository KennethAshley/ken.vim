-----------------------------------------------------------
-- Smart and powerful comment plugin
-----------------------------------------------------------

-- Plugin: Comment.nvim
-- https://github.com/numToStr/Comment.nvim

require('bufferline').setup({
  options = {
    show_close_icon = false,
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    separator_style = 'thin',
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      },
    },
  },
  highlights = {
    buffer_selected = {
      guifg = "#282828",
      guibg = "#458588",
    },
    fill = {
      guifg = "#fffff0",
      guibg = "#282828"
    },
    separator = {
      guibg = "#458588",
      guibg = "#458588"
    },
    indicator_selected = {
      guifg = "#458588",
      guibg = "#458588"
    },
  },
})
