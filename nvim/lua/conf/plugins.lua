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
  'arcticicestudio/nord-vim';
  {'dracula/vim', as='dracula'};
  'folke/tokyonight.nvim';

  -- Interface
  'mhinz/vim-startify';
  'nvim-lualine/lualine.nvim';
  'kyazdani42/nvim-web-devicons';
  'psliwka/vim-smoothie';

  -- Movements
  'tpope/vim-surround';

  -- File System
  'airblade/vim-rooter';

  --Git
  'tpope/vim-fugitive';
  'tpope/vim-rhubarb';
  'junegunn/gv.vim';
  'mhinz/vim-signify';

  -- Terminal
  'numtostr/FTerm.nvim';

  -- Treesitter & LSP
  {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'};
  'neovim/nvim-lspconfig';

  -- Telescope
  'nvim-telescope/telescope.nvim';
  'nvim-telescope/telescope-project.nvim';

  -- Completion
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/nvim-cmp';
  {'tzachar/cmp-tabnine', run='./install.sh' };
}


-- Snippets (VSCode Marketplace)
-- paq {'hrsh7th/vim-vsnip'}
-- paq {'hrsh7th/vim-vsnip-integ'}
-- paq {'xabikos/vscode-javascript'}
-- paq {'sdras/vue-vscode-snippets'}
-- paq {'mattn/emmet-vim'}

-- Linting & Fixing
-- paq {'sbdchd/neoformat'}

-- }}}

-- Other/ Movements/ Interface {{{
-- paq {'kosayoda/nvim-lightbulb'}
-- paq {'kshenoy/vim-signature'}
-- paq {'tpope/vim-unimpaired'}
-- paq {'jiangmiao/auto-pairs'} -- cohama/lexima.vim (cf nvim-compe)
-- paq {'mbbill/undotree'}
-- paq {'tpope/vim-vinegar'}
-- paq {'unblevable/quick-scope'}
-- }}}

-- vim:foldmethod=marker:foldlevel=1
