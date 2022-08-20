--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   autopairs.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Autopairs plugin config file
--]]


-- Pcalls {{{
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  vim.notify("Problem with autopairs!")
  return
end

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  vim.notify("Problem with cmp!")
  return
end
-- }}}

npairs.setup {
  check_ts = true,
  ts_config = {
    lua = {'string'},-- it will not add a pair on that treesitter node
    javascript = {'template_string'},
    java = false,-- don't check treesitter on java
  },
  fast_wrap = {},
}

-- Hook in cmp
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

-- vim:foldmethod=marker:foldlevel=0
