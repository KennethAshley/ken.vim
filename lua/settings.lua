-- refer to defaults at https://neovim.io/doc/user/vim_diff.html

-- Map Leader
vim.g.mapleader = ' '

local indent = 2

-- Always show tabs
vim.opt.showtabline = 2

-- No swapfile
vim.opt.swapfile = false

-- no tilde files
vim.opt.writebackup = false

-- No .bak files
vim.opt.backup = false

-- Put new windows below current
vim.opt.splitbelow = true

-- Put new windows right of current
vim.opt.splitright = true

-- Convert new tabs to spaces
vim.opt.expandtab = true

-- Width of a hard tabstop measured in "spaces"
vim.opt.tabstop = indent

-- Indent to correspond to a single tab
vim.opt.shiftwidth = indent

-- Sets the number of columns for a TAB
vim.opt.softtabstop = indent

-- Insert indents automatically
vim.opt.smartindent = true

-- True color support
vim.opt.termguicolors = true

--Apply the color set for dark screens
vim.opt.background = 'dark'

-- Make line numbers default
vim.opt.number = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- faster completion (4000ms default)
vim.opt.updatetime = 300

-- Set colorscheme (order is important here)
vim.opt.termguicolors = true

-- Assinging variable
vim.g.onedark_terminal_italics = 2

vim.opt.scrolloff = 8

-- Always show the sign column
vim.opt.signcolumn = "yes"

vim.cmd [[colorscheme onedark]]

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'