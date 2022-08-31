--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   packer.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Where nvim gets spicy
--]]

-- Find more here: https://github.com/rockerBOO/awesome-neovim

-- Plugins (conf/pluglist) {{{
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File System
  use 'airblade/vim-rooter'

  -- Themes
  use 'folke/tokyonight.nvim'
  use { 'dracula/vim', as = 'dracula' }
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'luisiacc/gruvbox-baby'
  use "rebelot/kanagawa.nvim"
  use 'andersevenrud/nordic.nvim'

  -- Interface
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'akinsho/bufferline.nvim'
  use 'psliwka/vim-smoothie'

  -- Movements & Mappings
  use 'unblevable/quick-scope'
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }
  use 'windwp/nvim-autopairs'
  use {
    'kylechui/nvim-surround',
    tag = "*",
    config = function()
      require('nvim-surround').setup({})
    end
  }

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'onsails/lspkind-nvim',
    'saadparwaiz1/cmp_luasnip',
    {
      'tzachar/cmp-tabnine',
      run = './install.sh',
      requires = 'hrsh7th/nvim-cmp'
    }
  }

  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  -- Telescope
  use {
    { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    'BurntSushi/ripgrep',
    'nvim-telescope/telescope-project.nvim',
    'nvim-telescope/telescope-file-browser.nvim'
  }

  -- Treesitter
  use {
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    'p00f/nvim-ts-rainbow',
  }

  -- Diagnostics
  use {
    'folke/trouble.nvim',
    requires = { 'kyazdani42/nvim-web-devicons'}
  }

  -- Terminal
  use 'numtostr/FTerm.nvim'

  --Git
  use 'lewis6991/gitsigns.nvim'
end)
-- }}}

--[[ Other/ Movements/ Interface {{{
tim popes plugins
'vim-lion'
'jose-elias-alvarez/null-ls.nvim'
'chentoast/marks.nvim'
'folke/twilight.nvim'
'p00f/clangd_extensions.nvim'
'pianocomposer321/yabs.nvim'
'numToStr/Comment.nvim'
'glepnir/lspsaga.nvim'
'nvim-pack/nvim-spectre'
'kosayoda/nvim-lightbulb'
'mbbill/undotree'
--]]

-- vim:foldmethod=marker:foldlevel=1
