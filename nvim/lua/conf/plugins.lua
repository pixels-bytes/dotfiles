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

  -- Themes
  'folke/tokyonight.nvim';
  'arcticicestudio/nord-vim';
  {'dracula/vim', as='dracula'};
  'gruvbox-community/gruvbox';

  -- Interface
  'mhinz/vim-startify';
  'nvim-lualine/lualine.nvim';
  'kyazdani42/nvim-web-devicons';
  'psliwka/vim-smoothie';

  -- Movements
  'tpope/vim-surround';
  'unblevable/quick-scope';

  -- File System
  'airblade/vim-rooter';

  --Git
  'tpope/vim-fugitive';
  'lewis6991/gitsigns.nvim';

  -- Terminal
  'numtostr/FTerm.nvim';

  -- Treesitter & LSP
  {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'};
  'neovim/nvim-lspconfig';

  -- Telescope
  'nvim-telescope/telescope.nvim';
  'nvim-telescope/telescope-project.nvim';

  -- Completion
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/cmp-nvim-lsp';
  'saadparwaiz1/cmp_luasnip';
  {'tzachar/cmp-tabnine', run='./install.sh' };

  -- snippets
  'L3MON4D3/LuaSnip'; --snippet engine
  'rafamadriz/friendly-snippets'; -- a bunch of snippets to use
}


-- Linting & Fixing
-- paq {'sbdchd/neoformat'}

-- }}}

-- Other/ Movements/ Interface {{{
-- paq {'kosayoda/nvim-lightbulb'}
-- paq {'jiangmiao/auto-pairs'} -- cohama/lexima.vim (cf nvim-compe)
-- paq {'mbbill/undotree'}
-- }

-- vim:foldmethod=marker:foldlevel=1
