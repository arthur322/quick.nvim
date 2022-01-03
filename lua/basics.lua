vim.g.mapleader = " "
vim.o.number  =true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '80'
vim.o.showmode = false
vim.o.showtabline = 1
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.o.title = true
vim.o.showcmd = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true
vim.o.undodir = '~/.config/nvim/undodir'
vim.o.inccommand = 'split'

vim.opt.wildignore:append 'node_modules/*'

vim.api.nvim_set_keymap('n', '<M-l>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-h>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-j>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', '<C-W><C-K>', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-X>', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>;', '<C-^>', { noremap = true })

-- vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })
--
vim.api.nvim_set_keymap('v', '/', '"vy/<C-R>v', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>e', ":Fern . -reveal=%<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-z>', '<Esc>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>/', ':nohl<CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', '*N', { noremap = true })

vim.api.nvim_set_keymap('n', '[q', ':cprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ']q', ':cnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':copen<CR>', { noremap = true })

vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })

vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25
