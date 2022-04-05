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
local paq = require('paq')
paq {
  -- Plugin Manager
  'savq/paq-nvim';

  -- Common Dependencies
  'nvim-lua/plenary.nvim';

  -- File System
  'airblade/vim-rooter';

  -- Themes
  'folke/tokyonight.nvim';
  'arcticicestudio/nord-vim';
  {'dracula/vim', as='dracula'};
  'gruvbox-community/gruvbox';
  {'catppuccin/nvim', as='catppuccin'};

  -- Interface
  'mhinz/vim-startify';
  'nvim-lualine/lualine.nvim';
  'kyazdani42/nvim-web-devicons';
  'psliwka/vim-smoothie';

  -- Treesitter
  {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'};

  -- Movements
  'tpope/vim-surround';
  'unblevable/quick-scope';

  -- Terminal
  'numtostr/FTerm.nvim';

  --Git
  'lewis6991/gitsigns.nvim';

  -- Completion
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-nvim-lua';
  'onsails/lspkind-nvim';
  'saadparwaiz1/cmp_luasnip';
  {'tzachar/cmp-tabnine', run='./install.sh' };

  -- Snippets
  'L3MON4D3/LuaSnip';
  'rafamadriz/friendly-snippets';

  -- LSP
  'neovim/nvim-lspconfig';
  'williamboman/nvim-lsp-installer';

  -- Telescope
  'nvim-telescope/telescope.nvim';
  'nvim-telescope/telescope-project.nvim';
}


-- Linting & Fixing
-- paq {'sbdchd/neoformat'}

-- }}}

--[[ Other/ Movements/ Interface {{{
'windwp/nvim-autopairs'
'folke/todo-comments.nvim'
'folke/trouble.nvim'
'folke/twilight.nvim'
'folke/which-key.nvim'
'nvim-pack/nvim-spectre
'kosayoda/nvim-lightbulb'
'mbbill/undotree'
--]]
-- vim:foldmethod=marker:foldlevel=1
