-- refer to defaults at https://neovim.io/doc/user/vim_diff.html

-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local cmd = vim.cmd     				-- execute Vim commands
local api = vim.api     				-- execute Vim commands
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options

local exec = api.nvim_exec

----Remap space as leader key
api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })

-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ' '
g.maplocalleader = ' '

g.gruvbox_italic_functions = true
g.gruvbox_transparent = true

g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
-- g.nvim_tree_respect_buf_cwd = 1

g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 0,
  folder_arrows = 1,
}

g.vimwiki_list = {
  {
    path = '~/Notes',
    syntax = 'markdown',
    ext  = '.md',
  }
}

g.vimwiki_ext2syntax = {
  ['.md'] = 'markdown',
  ['.markdown'] = 'markdown',
  ['.mdown'] = 'markdown',
}

opt.title = true
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile
opt.scrolloff = 8             -- keep cursor centered vertically on the screen
opt.laststatus = 3            -- global statusline

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.relativenumber = true     -- show relative numbers
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.signcolumn = "yes"        -- always show sign column
opt.background = 'dark'       -- apply the color set for dark screens
opt.cursorline = true         -- apply the color set for dark screens

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

-- Disable MiniStatusLine on NvimTree
cmd [[autocmd Filetype NvimTree lua vim.b.ministatusline_disable = true]]

cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.lazyredraw = true     -- faster scrolling
opt.updatetime = 300      -- faster completion (4000ms default)
opt.undofile = true       -- Save undo history
opt.writebackup = false   -- no tilde files
opt.backup = false        -- No .bak files

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
cmd [[colorscheme gruvbox-flat]]

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 4 spaces when tab
opt.tabstop = 2           -- 1 tab == 2 spaces
opt.smartindent = true    -- autoindent new lines
opt.showtabline = 2       -- always show tabs
opt.breakindent = true    -- enable break indent
opt.fillchars = {
  vert = "???",
}

-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
opt.completeopt = 'menuone,noselect'     -- insert mode completion options
