-----------------------------------------------------------
-- Smart and powerful comment plugin
-----------------------------------------------------------

-- Plugin: Comment.nvim
-- https://github.com/numToStr/Comment.nvim

require('bufferline').setup({
  options = {
    enforce_regular_tabs = true,
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
})
