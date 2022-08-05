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
  
  -- Themes
  use 'folke/tokyonight.nvim'
  use {'dracula/vim', as='dracula'}
  use {'catppuccin/nvim', as='catppuccin'}
  use 'luisiacc/gruvbox-baby'

  -- File System
  use 'airblade/vim-rooter'

  -- Interface
  use 'mhinz/vim-startify'
  use 'psliwka/vim-smoothie'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Movements
  use 'tpope/vim-surround'
  use 'unblevable/quick-scope'

  -- Terminal
  use 'numtostr/FTerm.nvim'

  --Git
  use 'lewis6991/gitsigns.nvim'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'onsails/lspkind-nvim'
  use 'saadparwaiz1/cmp_luasnip'
  -- {'tzachar/cmp-tabnine', run='./install.sh' };
  
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'nvim-telescope/telescope-project.nvim'
  -- 'nvim-telescope/telescope-file-browser.nvim'
end)
-- }}}

--[[ Other/ Movements/ Interface {{{
'pianocomposer321/yabs.nvim'
'numToStr/Comment.nvim'
'glepnir/lspsaga.nvim'
'shaunsingh/nord.nvim'
'jose-elias-alvarez/null-ls.nvim'
'windwp/nvim-autopairs'
'folke/todo-comments.nvim'
'folke/trouble.nvim'
'folke/twilight.nvim'
'folke/which-key.nvim'
'nvim-pack/nvim-spectre'
'kosayoda/nvim-lightbulb'
'mbbill/undotree'
--]]
-- vim:foldmethod=marker:foldlevel=1
