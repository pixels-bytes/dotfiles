--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   init.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      The entry point
--]]

-- Reference {{{
-- https://gist.github.com/awidegreen/3854277

-- https://github.com/ojroques/dotfiles/blob/master/nvim/init.lua
-- https://github.com/nanotee/nvim-lua-guide
-- https://nathansmith.io/posts/neovim-lsp/
-- https://learnxinyminutes.com/docs/lua/
-- }}}

-- Plugins (conf/pluglist) {{{
vim.cmd 'packadd paq-nvim'           -- load the package manager
local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- Themes
paq {'ayu-theme/ayu-vim'}
paq {'arcticicestudio/nord-vim'}
paq {'mhartington/oceanic-next'}
paq{'dracula/vim', as='dracula'} 
paq {'rktjmp/lush.nvim'}
paq {'npxbr/gruvbox.nvim'}

-- Interface
paq {'mhinz/vim-startify'}
paq {'hoob3rt/lualine.nvim'}
paq {'kyazdani42/nvim-web-devicons'}
paq {'psliwka/vim-smoothie'}

-- File System
paq {'airblade/vim-rooter'}

-- Movements
paq {'tpope/vim-surround'}

-- Treesitter & LSP
paq {'nvim-treesitter/nvim-treesitter'}
paq {'neovim/nvim-lspconfig'}

-- Telescope 
paq {'nvim-telescope/telescope.nvim'}
paq {'nvim-telescope/telescope-project.nvim'}
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-lua/popup.nvim'}
paq {'BurntSushi/ripgrep'}
paq {'sharkdp/bat'}

-- Completion
paq {'hrsh7th/nvim-compe'}
paq {'tzachar/compe-tabnine', hook='./install.sh'}

-- Snippets (VSCode Marketplace)
paq {'hrsh7th/vim-vsnip'}
paq {'hrsh7th/vim-vsnip-integ'}
paq {'xabikos/vscode-javascript'}
paq {'sdras/vue-vscode-snippets'}
paq {'mattn/emmet-vim'}

-- Linting & Fixing
paq {'prettier/vim-prettier'}

--Git
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-rhubarb'}
paq {'junegunn/gv.vim'}
paq {'mhinz/vim-signify'}

-- Terminal
paq {'numtostr/FTerm.nvim'}

-- }}}

-- Other/ Movements
-- paq {'kosayoda/nvim-lightbulb'}
-- paq {'kshenoy/vim-signature'}
-- paq {'tpope/vim-unimpaired'}
-- paq {'jiangmiao/auto-pairs'} -- cohama/lexima.vim (cf nvim-compe)
-- paq {'mbbill/undotree'}
-- paq {'tpope/vim-vinegar'}
-- paq {'unblevable/quick-scope'}
-- paq {'oberblastmeister/neuron.nvim'}
-- paq {'sbdchd/neoformat'}

-- Imports {{{
require('conf/utils')
require('conf/vanilla')
require('conf/mappings')
require('conf/commands')
require('conf/lualine')
require('conf/treesitter')
require('conf/lsp')
require('conf/telescope')
require('conf/completion')
require('conf/snippets')
require('conf/git')
require('conf/terminal')
-- }}}

-- vim:foldmethod=marker:foldlevel=1
