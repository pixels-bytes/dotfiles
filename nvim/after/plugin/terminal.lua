--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   terminal.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Settings for a persistant termainal
--]]


local map = vim.keymap.set

local keymap = vim.keymap.set

fterm.setup({
  dimensions = {
    y = 0.3,
    height = 0.9,
    width = 0.9,
  },
})

keymap('n', '<C-\\>', '<CMD>lua require("FTerm").toggle()<CR>')
keymap('t', '<C-\\>', '<c-\\><c-n><CMD>lua require("FTerm").toggle()<CR>')
