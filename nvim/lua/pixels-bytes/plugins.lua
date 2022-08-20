--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   plugins.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Where nvim get spicy
--]]


-- Plugins (conf/pluglist) {{{
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File System
  use 'airblade/vim-rooter'

  -- Themes
  use 'folke/tokyonight.nvim'
  use {'dracula/vim', as='dracula'}
  use {'catppuccin/nvim', as='catppuccin'}
  use 'luisiacc/gruvbox-baby'
  use "rebelot/kanagawa.nvim"
  use 'shaunsingh/nord.nvim'

  -- Interface
  use 'mhinz/vim-startify'
  use 'psliwka/vim-smoothie'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Movements & Mappings
  use 'tpope/vim-surround'
  use 'unblevable/quick-scope'
  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {}
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
      run='./install.sh',
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
    { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim'}},
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    'nvim-telescope/telescope-project.nvim'
    -- 'nvim-telescope/telescope-file-browser.nvim'
  }

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Terminal
  use 'numtostr/FTerm.nvim'

  --Git
  use 'lewis6991/gitsigns.nvim'
end)
-- }}}

--[[ Other/ Movements/ Interface {{{
'jose-elias-alvarez/null-ls.nvim'
'folke/which-key.nvim'
'folke/trouble.nvim'
'folke/twilight.nvim'
'p00f/clangd_extensions.nvim'
'pianocomposer321/yabs.nvim'
'numToStr/Comment.nvim'
'glepnir/lspsaga.nvim'
'shaunsingh/nord.nvim'
'windwp/nvim-autopairs'
'nvim-pack/nvim-spectre'
'kosayoda/nvim-lightbulb'
'mbbill/undotree'
--]]
-- vim:foldmethod=marker:foldlevel=1
