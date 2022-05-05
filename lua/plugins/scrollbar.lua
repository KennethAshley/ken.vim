-----------------------------------------------------------
-- nvim-scrollbar
-----------------------------------------------------------

-- Plugin: nvim-scrollbar
-- https://github.com/petertriho/nvim-scrollbar

local scrollbar = require('scrollbar')
local search = require('scrollbar.handlers.search')

search.setup()
scrollbar.setup()

