-----------------------------------------------------------
-- Find, Filter, Preview, Pick. All lua, all the time.
-----------------------------------------------------------

-- Plugin: Telescope
-- https://github.com/nvim-telescope/telescope.nvim

local telescope = require('telescope')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local custom_actions = {}

function custom_actions._multiopen(prompt_bufnr, open_cmd)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local num_selections = #picker:get_multi_selection()

  if num_selections > 1 then
    local cwd = picker.cwd

    if cwd == nil then
      cwd = ""
    else
      cwd = string.format("%s/", cwd)
    end

    vim.cmd("bw!") -- wipe the prompt buffer

    for _, entry in ipairs(picker:get_multi_selection()) do
      vim.cmd(string.format("%s %s%s", open_cmd, cwd, entry.value))
    end

    vim.cmd('stopinsert')
  else
    if open_cmd == "vsplit" then
      actions.file_vsplit(prompt_bufnr)
    elseif open_cmd == "split" then
      actions.file_split(prompt_bufnr)
    elseif open_cmd == "tabe" then
      actions.file_tab(prompt_bufnr)
    else
      actions.select_default(prompt_bufnr)
    end
  end
end

function custom_actions.multi_selection_open_vsplit(prompt_bufnr)
  custom_actions._multiopen(prompt_bufnr, "vsplit")
end

function custom_actions.multi_selection_open_split(prompt_bufnr)
  custom_actions._multiopen(prompt_bufnr, "split")
end

function custom_actions.multi_selection_open_tab(prompt_bufnr)
  custom_actions._multiopen(prompt_bufnr, "tabe")
end

function custom_actions.multi_selection_open(prompt_bufnr)
  custom_actions._multiopen(prompt_bufnr, "edit")
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ["<tab>"] = actions.toggle_selection + actions.move_selection_next,
        ["<s-tab>"] = actions.toggle_selection + actions.move_selection_previous,
        ["<cr>"] = custom_actions.multi_selection_open,
        ["<c-v>"] = custom_actions.multi_selection_open_vsplit,
        ["<c-s>"] = custom_actions.multi_selection_open_split,
        ["<c-t>"] = custom_actions.multi_selection_open_tab,
      },
      n = {
        ["<esc>"] = actions.close,
        ["<tab>"] = actions.toggle_selection + actions.move_selection_next,
        ["<s-tab>"] = actions.toggle_selection + actions.move_selection_previous,
        ["<cr>"] = custom_actions.multi_selection_open,
        ["<c-v>"] = custom_actions.multi_selection_open_vsplit,
        ["<c-s>"] = custom_actions.multi_selection_open_split,
        ["<c-t>"] = custom_actions.multi_selection_open_tab,
      }
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
      mappings = {
        n = {
          ['<leader>q'] = actions.delete_buffer,
        },
        i = {
          ['<leader>q'] = actions.delete_buffer,
        }
      }
    }
  },
})

local map_options = { noremap = true, silent = true, }
local map = vim.api.nvim_set_keymap

local map_builtin = function(key, f)
  local rhs = string.format("<cmd>lua require('telescope.builtin')['%s']()<CR>", f)
  map("n", key, rhs, map_options)
end

local map_helper = function(key, f)
  local rhs = string.format("<cmd>lua R('plugins.telescope')['%s']()<CR>", f)
  map("n", key, rhs, map_options)
end

local helpers = {}

helpers.find_files_in_directory_of_buffer = function()
  require('telescope.builtin').find_files({
      cwd = vim.fn.expand("%:p:h"),
    })
end


map_builtin('<C-p>', 'find_files')
map_builtin('<leader>b', 'buffers')
map_builtin('<C-f>', 'live_grep')

map('n', '<leader>p', ':Telescope neoclip<cr>', map_options)

return helpers
