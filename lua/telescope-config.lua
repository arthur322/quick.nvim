local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "%.lock",
    },
    mappings = {
      n = {
        ["<Tab>"] = actions.move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_next,
        ["s"] = actions.toggle_selection,
      },
      i = {
        ["<Tab>"] = actions.move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_next,
      },
    }
  },
  pickers = {
    buffers = {
      mappings = {
        n = {
          ["<c-d>"] = actions.delete_buffer,
        }
      }
    },
  },
  extensions = {
    fuzzy = true,                    -- false will only do exact matching
    override_generic_sorter = false, -- override the generic sorter
    override_file_sorter = true,     -- override the file sorter
  }
}

telescope.load_extension("git_worktree")

vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('v', '<C-F>', '"ty<cmd>Telescope live_grep<cr><c-r>t', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-T>', "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { noremap = true })
