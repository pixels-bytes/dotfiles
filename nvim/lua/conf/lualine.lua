--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   lualine.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      The entry point

--]]


local lualine = require('lualine')
local function pnb()
  return [[Pixels & Bytes]]
end
-- ayu_mirage, gruvbox, nord, oceanicnext, dracula
lualine.options.theme = 'gruvbox'
lualine.sections.lualine_c = { pnb, 'filename' }
lualine.status()
