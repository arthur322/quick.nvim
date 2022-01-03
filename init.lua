require('basics')
require('colors')
require('telescope-config')
require('coc-config')
require('lualine-config')
require('harpoon-config')
require('fern-config')

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'folke/tokyonight.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'ThePrimeagen/git-worktree.nvim'
  use {
    'ThePrimeagen/harpoon',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'tpope/vim-surround'
  use 'tpope/vim-vinegar'
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'overcache/NeoSolarized'
  use {
    'lambdalisue/fern.vim',
    requires = {
      'antoinemadec/FixCursorHold.nvim',
      'lambdalisue/fern-hijack.vim'
    }
  }
end)
