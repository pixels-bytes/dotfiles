--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   completion.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Autocomplete settings
--]]


-- Compe Settings {{{
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}
-- }}}

-- Compe Mappings {{{
local utils = require('conf/utils')
local map = utils.map

map('i', '<c-space>', 'compe#complete()', {silent=true, expr = true})
map('i', '<cr>', 'compe#confirm("<cr>")', {silent=true, expr = true})
map('i', '<c-e>', 'compe#close("<c-e>")', {silent=true, expr = true})
map('i', '<c-f>', 'compe#scroll("delta": +4)', {silent=true, expr = true})
map('i', '<c-f>', 'compe#scroll("delta": -4)', {silent=true, expr = true})
-- }}}
